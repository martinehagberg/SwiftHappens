//
//  TicketView.swift
//  SwiftHappens
//
//  Created by Martine Hagberg on 31/08/2026.
//

import SwiftUI

struct TicketView: View {
    
    private let adultPrice = 44.0
    private let kidsPrice = 22.0
    private let studentPrice = 26.0
    
    @State private var adults: Int = 0
    @State private var kids: Int = 0
    @State private var student: Int = 0
    
    
    private func calculatePrice() -> Double {
        
        let adultTotal = Double(adults) * adultPrice
        let kidsTotal = Double(kids) * kidsPrice
        let studentTotal = Double(student) * studentPrice
        
        let sum = adultTotal + kidsTotal + studentTotal
        
        if isEligibleForDiscount(){
            return sum * 0.66
        }
        
        return sum
    }
    
    private func isEligibleForDiscount() -> Bool {
        return adults + student > 0 && kids > 0
    }
    
    
    var body: some View {
        
        VStack {
            
            ScrollView {
                
                VStack( spacing: 20){
                    
                    //MARK: - Adult ticket
                    
                    HStack{
                        Button {
                            adults += 1
                        } label: {
                            HStack{
                                Text("\(adults)")
                                    .font(.system(size: 40))
                                    .fontWeight(.light)
                                    .foregroundStyle(.white)
                                    .frame(width: 40)
                                    .lineLimit(1)
                                    .minimumScaleFactor(0.75)
                                
                                Image(systemName: "figure.stand")
                                    .font(.largeTitle)
                                    .foregroundStyle(.white)
                                    .padding(.horizontal)
                                
                                VStack(alignment: .leading){
                                    Text("VOKSEN")
                                        .font(.caption)
                                        .fontWeight(.bold)
                                        .foregroundStyle(.white)
                                    
                                    Text(adultPrice, format:
                                            .currency(code: "NOK"))
                                    .foregroundStyle(.white)
                                    .font(.title)
                                }
                            }
                        }
                        Spacer()
                        
                        Divider()
                            .background(Color.white.opacity(0.5))
                        
                        Button("-"){
                            adults -= 1
                        }
                        .disabled(adults == 0)
                        .tint(.white.opacity(0.8))
                        .font(.largeTitle)
                        .padding()
                    }
                    .frame(height: 80)
                    .padding()
                    
                    Divider()
                        .background(Color.white.opacity(0.5))
                    
                    
                    //MARK: - Kids ticket
                    
                    HStack{
                        Button {
                            kids += 1
                        } label: {
                            HStack{
                                Text("\(kids)")
                                    .font(.system(size: 40))
                                    .fontWeight(.light)
                                    .foregroundStyle(.white)
                                    .frame(width: 40)
                                    .lineLimit(1)
                                    .minimumScaleFactor(0.75)
                                
                                Image(systemName: "figure.child")
                                    .font(.largeTitle)
                                    .foregroundStyle(.white)
                                    .padding(.horizontal)
                                
                                VStack(alignment: .leading){
                                    Text("BARN")
                                        .font(.caption)
                                        .fontWeight(.bold)
                                        .foregroundStyle(.white)
                                    
                                    Text(kidsPrice, format:
                                            .currency(code: "NOK"))
                                    .foregroundStyle(.white)
                                    .font(.title)
                                }
                            }
                        }
                        Spacer()
                        
                        Divider()
                            .background(Color.white.opacity(0.5))
                        
                        Button("-"){
                            kids -= 1
                        }
                        .disabled(kids == 0)
                        .tint(.white.opacity(0.8))
                        .font(.largeTitle)
                        .padding()
                    }
                    .frame(height: 80)
                    .padding()
                    
                    Divider()
                        .background(Color.white.opacity(0.5))
                    
                    
                    //MARK: - Student ticket
                    
                    HStack{
                        Button {
                            student += 1
                        } label: {
                            HStack{
                                Text("\(student)")
                                    .font(.system(size: 40))
                                    .fontWeight(.light)
                                    .foregroundStyle(.white)
                                    .frame(width: 40)
                                    .lineLimit(1)
                                    .minimumScaleFactor(0.75)
                                
                                Image(systemName: "graduationcap")
                                    .font(.largeTitle)
                                    .foregroundStyle(.white)
                                    .padding(.horizontal)
                                
                                VStack(alignment: .leading){
                                    Text("STUDENT")
                                        .font(.caption)
                                        .fontWeight(.bold)
                                        .foregroundStyle(.white)
                                    
                                    Text(studentPrice, format:
                                            .currency(code: "NOK"))
                                    .foregroundStyle(.white)
                                    .font(.title)
                                }
                            }
                        }
                        Spacer()
                        
                        Divider()
                            .background(Color.white.opacity(0.5))
                        
                        Button("-"){
                            student -= 1
                        }
                        .disabled(student == 0)
                        .tint(.white.opacity(0.8))
                        .font(.largeTitle)
                        .padding()
                    }
                    .frame(height: 80)
                    .padding()
                    
                    Spacer()

 
                }
                .padding()
                
            }
            
            //MARK: - Payment section
            
            VStack(spacing: 12) {
                
                Text("BETAL MED VIPPS")
                    .font(.footnote)
                
                HStack{
                    Text("Kjøp bilett")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Text(calculatePrice(), format: .currency(code: "NOK"))
                }
                
                if isEligibleForDiscount() {
                    Text("33,33% familierabatt")
                } else {
                    Text("Ingen rabatt")
                }
            
            }
            .foregroundStyle(.white)
            .padding(40)
            .frame(maxWidth: .infinity)
            .background(Color(hex: 0xcd4629))
        }
        .background(.black.opacity(0.8))
        .navigationTitle("Kjøp enkeltbilett")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    TicketView()
}
