//
//  API.swift
//  SwiftHappens
//
//  Created by Martine Hagberg on 07/09/2026.
//

import Foundation

struct API {
    
    func fetchData(from urlString: String) async throws -> String {
        
        //Denne betingelsen å være sann for at vi skal kunne fortsette 
        guard let url = URL(string: urlString) else {
            //Hvis URL ikke er gyldig
            throw URLError(.badURL)
        }
        
        print("💌 Sender request til: ", url)
        //_ er placeholder, tuppel når flere verdier
        let (data, response) = try await URLSession.shared.data(from: url)
        
        print("🤖 Antall bytes: ", data.count)
        
        return String(decoding: data, as: UTF8.self)
    }
}
