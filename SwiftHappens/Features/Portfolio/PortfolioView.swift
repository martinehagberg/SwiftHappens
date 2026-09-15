//
//  PortfolioView.swift
//  SwiftHappens
//
//  Created by Martine Hagberg on 01/09/2026.
//

import SwiftUI

struct PortfolioView: View {
    var body: some View {
        
        Form {
            
            Section("Uke 1"){
                NavigationLink {
                    WaffleView()
                } label: {
                    HStack {
                        Image(systemName: "fork.knife")
                        Spacer()
                        Text("Vaffel oppskrift")
                            .font(.title3.bold())
                    }
                }
            }
            Section("Uke 2"){
                NavigationLink {
                    TicketView()
                } label: {
                    HStack {
                        Image(systemName: "bus")
                        Spacer()
                        Text("Skyss")
                            .font(.title3.bold())
                    }
                }
                NavigationLink {
                    SalaryCalculatorView()
                } label: {
                    HStack {
                        Image(systemName: "dollarsign.circle")
                        Spacer()
                        Text("Lønnskalkulator")
                            .font(.title3.bold())
                    }
                }
                NavigationLink {
                    MoviesView()
                } label: {
                    HStack {
                        Image(systemName: "popcorn")
                        Spacer()
                        Text("Popcorn")
                            .font(.title3.bold())
                    }
                }
            }
            
            Section("Uke 3"){
                NavigationLink {
                    APITesterView()
                } label: {
                    HStack {
                        Image(systemName: "book.and.wrench")
                        Spacer()
                        Text("API Tester")
                            .font(.title3.bold())
                    }
                }
                NavigationLink {
                    PokemonView()
                } label: {
                    HStack {
                        Image(systemName: "heart")
                        Spacer()
                        Text("Pokemon")
                            .font(.title3.bold())
                    }
                }
                
            }
        }
        .navigationTitle("Portfolio")
        
    }
}

#Preview {
    PortfolioView()
}
