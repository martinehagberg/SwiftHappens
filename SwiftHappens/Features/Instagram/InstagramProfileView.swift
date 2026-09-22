//
//  InstagramProfileView.swift
//  SwiftHappens
//
//  Created by Martine Hagberg on 22/09/2026.
//

import SwiftUI
import PhotosUI

struct InstagramProfileView: View {
    
    //Variabler til photosPicker
    @State private var selectedProfileItem: PhotosPickerItem?
    @State private var profileImage: UIImage?
    
    //Variabler til Camerapicker
    @State private var posts: [UIImage] = []
    @State private var showCamera = false
    @State private var cameraImage: UIImage?
    
    private let columns = [
        GridItem(.flexible(), spacing: 2),
        GridItem(.flexible(), spacing: 2),
        GridItem(.flexible(), spacing: 2)
    ]
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading, spacing: 16){
                //TODO: - Profilen kommer her
                
                HStack (spacing: 28){
                    
                    PhotosPicker(
                        selection: $selectedProfileItem,
                        matching: .images){
                        
                            ZStack {
                                Circle()
                                    .fill(.gray.opacity(0.2))
                                
                                if let profileImage {
                                    Image(uiImage: profileImage)
                                        .resizable()
                                        .scaledToFill()
                                }
                            }
                            .frame(width: 90, height: 90)
                            .clipShape(Circle())
                        }
                        .buttonStyle(.plain)
                        .onChange(of: selectedProfileItem) { oldItem, newItem in
                            
                            //profilbilde blir byttet ut eller lagt til
                            Task {
                                guard let data = try? await
                                        newItem?.loadTransferable(type: Data.self),
                                      let image = UIImage(data:
                                        data) else {
                                    return
                                }
                                
                                profileImage = image
                            }
                        }
                        
                    
                    
                    HStack(spacing: 24){
                        
                        VStack (spacing: 2){
                            Text("200")
                                .font(.headline)
                            Text("Posts")
                                .font(.subheadline)
                        }
                        
                        VStack (spacing: 2){
                            Text("20M")
                                .font(.headline)
                            Text("Followers")
                                .font(.subheadline)
                        }
                        
                        VStack (spacing: 2){
                            Text("1")
                                .font(.headline)
                            Text("Following")
                                .font(.subheadline)
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack(alignment: .leading, spacing: 3){
                    Text("Cristiano Ronaldo")
                        .fontWeight(.semibold)
                    
                    Text("⚽️ A short bio to discribe yourself.")
                    
                    Text("👨‍🍳 Love to cook.")
                    
                    Label("cristiano@ronaldo.com", systemImage: "link")
                        .fontWeight(.semibold)
                        .foregroundStyle(.blue)
                        .padding(.top, 6)
                }
                
                HStack(spacing: 8){
                    Button("Follow"){
                        // Her kunne man gjort en action
                    }
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 34)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    
                    Button("Message"){
                        // Her kunne man gjort en action
                    }
                    .fontWeight(.semibold)
                    .foregroundStyle(.primary)
                    .frame(maxWidth: .infinity)
                    .frame(height: 34)
                    .background(Color.gray.opacity(0.15))
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    
                }
                
                LazyVGrid(columns: columns, spacing: 2) {
                    
                    ForEach(posts, id:\.self) { post in
                        Image(uiImage: post)
                            .resizable()
                            .scaledToFill()
                            .frame(height: 160)
                            .clipped()
                        
                    }
                }
                .padding(.horizontal, -16)
                
            }
            .padding(.horizontal)
            
        }
        .navigationTitle("Cristiano Ronaldo")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing){
                Button {
                    //Action
                    cameraImage = nil
                    showCamera = true
                } label: {
                    //Utseende
                    Image(systemName: "plus")
                }
            }
        }
        .sheet(isPresented: $showCamera) {
            //onDismiss = når sheeten lukkes
            if let cameraImage {
                posts.insert(cameraImage, at: 0)
            }
        } content: {
            //Viewet som skal vises i sheeten
            CameraPicker(image: $cameraImage)
                .ignoresSafeArea()
        }

        
    }
}

#Preview {
    NavigationStack {
        InstagramProfileView()
    }
}
