//
//  WaffleView.swift
//  SwiftHappens
//
//  Created by Martine Hagberg on 25/08/2026.
//

import SwiftUI
struct WaffleView : View {
    
    //MARK: Vaffel informasjon
    
    let beskrivelse: String = "Vafler, en suksess både hos store og små. Sett frem syltetøy, rømme, smør, sukker og brunost, da er du garantert at alle får sine ønsker oppfylt. Prøv vår deilige vaffeloppskrift!"
    
    let ingredienser: String = """
        - 4 dl hvetemel 
        - 1 dl sukker
        - 1 ts bakepulver
        - 1 ts malt kardemomme, 
        - 4 dl mel
        - 3 stk. egg
        - 100 g smeltet smør
    """
    
    let oppskrift: String = """
    1. Ha mel, sukker, bakepulver og kardemomme i en bolle.

    2. Spe med litt av melken om gangen. Rør godt mellom hver gang for å få en glatt røre uten melklumper.

    3. Rør inn egg og tilsett smeltet smør. La røren svelle i 1/2 time. Juster røren med litt vann eller melk om den er for tykk.

    4. Stek vaflene i et vaffeljern, og legg over på rist. Server dem gjerne varme.
    Serveres med syltetøy, rømme, sukker, smør og/eller brunost. 
    """

    
    var body: some View {
        
        ScrollView {
            
            
            VStack(spacing: 24){
                
                //MARK: Oppskrift beskrivelse
                
                Image("vaffelBilde")
                    .resizable()
                    .scaledToFill()
                    .cornerRadius(5)
            
                VStack {
             
                    Text("Vaffel oppskrift")
                        .font(.title.bold())
                        .foregroundStyle(.primary)
                    
                    Spacer()
                    
                    Text(beskrivelse)
                        .font(.title3)
                        .foregroundStyle(.secondary)
                    
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(.background)
                .cornerRadius(24)
                
                //MARK: Ingredienser
                
                VStack(alignment: .leading, spacing: 16) {
                    HStack {
                        
                        Label("Ingredienser", systemImage: "fork.knife")
                            .font(.title2.bold())
                    }
                    
                    Divider()
                        .background(.red)
                    
                    Text(ingredienser)
                        .foregroundStyle(.secondary)
                        .lineSpacing(4)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(.background)
                .cornerRadius(24)
                
                //MARK: Fremgangsmåte
                
                VStack(alignment: .leading, spacing: 16) {
                    
                    HStack {
                        
                        Label("Fremgangsmåte", systemImage: "checklist")
                            .font(.title2.bold())
                    }
                    
                    Divider()
                        .background(.red)
                    
                    Text(oppskrift)
                        .foregroundStyle(.secondary)
                        .lineSpacing(4)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(.background)
                .cornerRadius(24)
                
            }
            .padding()
        }
        .background(Color(uiColor: .secondarySystemBackground))
        .navigationTitle("Vaffel")
    }
}

#Preview {
    WaffleView()
}

