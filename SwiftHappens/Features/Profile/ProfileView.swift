//
//  ProfileView.swift
//  SwiftHappens
//
//  Created by Martine Hagberg on 25/08/2026.
//

import SwiftUI

struct ProfileView: View {
    
    // MARK: - Personlig informasjon
    
    // I Swift heter en konstant let (kan ikke endres), var kan endres
    let name: String = "Martine Hagberg"
    let jobTitle: String = "Student og kommende iOS-utvikler"
    
    let age: Int = 21
    let city: String = "Bergen"
    
    let email: String = "martine.hagberg@gmail.com"
    let phoneNumber: String = "+47 97761771"
    let linkedin: String = "https://www.linkedin.com/in/martine-hagberg-454a7534b/"
    
    let emailLink: URL = URL(string: "mailto:martine.hagberg@gmail.com")!
    let phoneLink: URL = URL(string: "tel:+4797761771")!
    let linkedinLink: URL = URL(string: "https://www.linkedin.com/in/martine-hagberg-454a7534b/")!
    
    let summary: String = """
        Engasjert utviklerstudent som liker å kombinere teknologi, design og problemløsning. Jeg elsker å lage apper som er enkle å forstå, men også behaglige å bruke 
        """
    let education: String = "Bachelor i Informasjonsteknologi - frontend- og mobilutvikling"
    let school: String = "Kristiania"
    let startYear: Int = 2024
    let graduationYear: Int = 2027
    
    
    var body: some View {
        
        //MARK: Profilkort
        //VStack: vertikalt, H: horisontalt, Z over hverandre
        //bruk det som er i økosystemet, f.eks titler, farger
        ScrollView {
            
            VStack(spacing: 24){
                
                VStack {
                    
                    Image("martineBilde")
                    //modifyer må være denne rekkefølgen
                        .resizable()
                        .scaledToFill()
                        .frame(width: 96, height: 96)
                        .clipShape(Circle())
                    
                    Text(name)
                        .font(.title.bold())
                        .foregroundStyle(.primary)
                    
                    Text(jobTitle)
                        .font(.title3)
                        .foregroundStyle(.secondary)
                    
                    HStack {
                        Label(city, systemImage: "globe.europe.africa.fill")
                        //konvertere int til string
                        Label("\(age) år", systemImage: "person.fill")
                    }
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(.background)
                .cornerRadius(24)
                
                //MARK: Kontakt meg
                
                VStack(alignment: .leading, spacing: 16){
                    Text("Kontakt meg")
                        .font(.title2.bold())
                    
                    Divider()
                    
                    Link(destination: emailLink){
                        
                        HStack{
                            Label(email, systemImage: "envelope.circle.fill")
                            
                            Spacer()
                            
                            Image(systemName: "arrow.up.right")
                            
                        }
                    }
                    
                    Link(destination: phoneLink){
                        
                        HStack{
                            Label(phoneNumber, systemImage: "phone.circle.fill")
                            
                            Spacer()
                            
                            Image(systemName: "arrow.up.right")
                            
                        }
                    }
                    
                    Link(destination: linkedinLink){
                        
                        HStack{
                            Label(linkedin, systemImage: "link.circle.fill")
                            
                            Spacer()
                            
                            Image(systemName: "arrow.up.right")
                            
                        }
                    }
                    
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(.background)
                .cornerRadius(24)
                
                //MARK: - Om meg
                VStack(alignment: .leading, spacing: 16) {
                    Text("Om meg")
                        .font(.title2.bold())
                    
                    Divider()
                    
                    Text(summary)
                        .foregroundStyle(.secondary)
                        .lineSpacing(4)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(.background)
                .cornerRadius(24)
                
                //MARK: - Utdanning
                
                VStack(alignment: .leading){
                    Text("Utdanning")
                        .font(.title2.bold())
                    
                    Divider()
                    
                    HStack(spacing: 12){
                        
                        Image(systemName: "graduationcap.fill").font(.title2)
                        
                        VStack(alignment: .leading, spacing: 4){
                            Text(education)
                                .font(.headline)
                            Text(school)
                                .foregroundStyle(.secondary)
                            Text("\(startYear) - \(graduationYear)")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }
                    }
                    
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(.background)
                .cornerRadius(24)
            }
            .padding()
        }
        .background(Color(uiColor: .secondarySystemBackground))
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
}


#Preview {
    ProfileView()
}
