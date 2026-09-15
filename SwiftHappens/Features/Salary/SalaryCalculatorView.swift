//
//  SalaryCalculatorView.swift
//  SwiftHappens
//
//  Created by Martine Hagberg on 31/08/2026.
//

import SwiftUI


struct SalaryCalculatorView: View {
    
    @State private var hours: Int = 0
    
    private var amount: Int = 210
    
    private func calculateSalary() -> Int {
        let totalSalary = hours * amount
        
        return totalSalary
    }
    
    var body: some View {
        
        VStack(spacing: 20){
            
            HStack {
                Text("Lønnskalkulator ")
                Image(systemName: "dollarsign")
            }
            .font(.largeTitle)
            
            Spacer()
            
            VStack{
                
                Text("Antall timer")
                    .font(.largeTitle)
                
                HStack (spacing: 30) {
                    Button{
                        hours -= 1
                        
                    } label: {
                        Text("-")
                    }
                    .disabled(hours == 0)
                    .font(.largeTitle)
                    
                    Text("\(hours)")
                    
                    Button{
                        hours += 1
                        
                    } label: {
                        Text("+")
                    }
                    .font(.largeTitle)
                }
                .font(.title)
            }
            Spacer()
            
            VStack{
                HStack{
                    Text("Min lønn: ")
                    Text(calculateSalary(), format: .currency(code: "NOK"))
                        .fontWeight(.semibold)
                }
                .font(.title)
                
            }
            
        }
        .padding(40)
    }
}

#Preview {
    SalaryCalculatorView()
}
