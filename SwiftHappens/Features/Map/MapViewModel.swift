//
//  MapViewModel.swift
//  SwiftHappens
//
//  Created by Martine Hagberg on 21/09/2026.
//

import CoreLocation
import SwiftUI

class MapViewModel {
    
    let places = [
        MapPlace(
            name: "Lyderhorn",
            coordinate: CLLocationCoordinate2D(
                latitude: 60.3742,
                longitude: 5.2325),
            symbol: "figure.wave",
            color: .blue
        ),
        
        MapPlace(
            name: "Fløyen",
            coordinate: CLLocationCoordinate2D(
                latitude: 60.39389,
                longitude: 5.34541),
            symbol: "figure.wave",
            color: .blue
        ),
        
        MapPlace(
            name: "Ulriken",
            coordinate: CLLocationCoordinate2D(
                latitude: 60.37674,
                longitude: 5.39343),
            symbol: "figure.wave",
            color: .blue
        ),
        
        MapPlace(
            name: "Damsgårdsfjellet",
            coordinate: CLLocationCoordinate2D(
                latitude: 60.3708,
                longitude: 5.2750),
            symbol: "figure.wave",
            color: .blue
        ),
        
        MapPlace(
            name: "Løvstakken",
            coordinate: CLLocationCoordinate2D(
                latitude: 60.3561,
                longitude: 5.3214),
            symbol: "figure.wave",
            color: .blue
        ),
        
        MapPlace(
            name: "Rundemanen",
            coordinate: CLLocationCoordinate2D(
                latitude: 60.4111,
                longitude: 5.3622),
            symbol: "figure.wave",
            color: .blue
        ),
        
        MapPlace(
            name: "Rundemanen",
            coordinate: CLLocationCoordinate2D(
                latitude: 60.4111,
                longitude: 5.3622),
            symbol: "figure.wave",
            color: .blue
        ),
        
        MapPlace(
            name: "Sandviksfjellet",
            coordinate: CLLocationCoordinate2D(
                latitude: 60.4072,
                longitude: 5.3375),
            symbol: "figure.wave",
            color: .blue
        )
    ]
}
