//
//  ContentView.swift
//  SwiftHappens
//
//  Created by Martine Hagberg on 24/08/2026.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {

        TabView{
            
            Tab("Profile", systemImage: "person"){
                NavigationStack{
                    ProfileView()
                }
            }
            
            Tab("Portfolio", systemImage: "apps.iphone"){
                NavigationStack{
                    PortfolioView()
                    }
            }
            
            Tab("Tools", systemImage: "book.and.wrench"){
                NavigationStack{
                    APITesterView()
                }
            }
            
            Tab("7-fjell", systemImage: "mountain.2.fill"){
                NavigationStack{
                    MapView()
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}


        
