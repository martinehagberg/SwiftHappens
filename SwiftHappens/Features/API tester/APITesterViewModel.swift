//
//  APITesterViewModel.swift
//  SwiftHappens
//
//  Created by Martine Hagberg on 07/09/2026.
//

import Foundation
import Observation

@Observable
class APITesterViewModel {
    
    var urlText = ""
    var responseText = ""
    var isLoading = false
    
    private let api = API()
    
    func fetchData() async {
        
        isLoading = true
        
        print("⚙️ fetchData started...")
        
        do {
            responseText = try await api.fetchData(from: urlText)
        } catch {
            //error trenger ikke defineres og kommer fra catch funksjonen
            print("‼️ Noe fikk galt: ", error)
            responseText = "Noe gikk galt: \(error.localizedDescription)"
        }
        
        isLoading = false
    }
}
