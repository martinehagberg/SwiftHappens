//
//  MapView.swift
//  SwiftHappens
//
//  Created by Martine Hagberg on 21/09/2026.
//

import SwiftUI
import MapKit //verktøy for å bruke kart
import CoreLocation //verktøy for å hente koordinater fra gps


struct MapView: View {
    
    @State private var viewModel = MapViewModel()
    
    @State private var locationManager = CLLocationManager()
    
    @State private var position: MapCameraPosition = .region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(
                latitude: 60.39299,
                longitude: 5.3415
            ),
            span: MKCoordinateSpan(
                latitudeDelta: 0.08,
                longitudeDelta: 0.08
            )
        )
    )

    
    var body: some View {
        
        Map(position: $position) {
            ForEach(viewModel.places) { place in
                Marker(
                    place.name,
                    systemImage: place.symbol,
                    coordinate: place.coordinate
                )
                .tint(place.color)
            }
            
            UserAnnotation()
        }
        .mapStyle(.standard)
        .mapControls{
            MapUserLocationButton()
            MapCompass()
            MapScaleView()
        }
        .mapControlVisibility(.automatic)
        .onAppear{
            //kan brukes over allt ikke bare i kart
            locationManager.requestWhenInUseAuthorization()
        }
        
        .navigationTitle("De 7 fjell")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

#Preview {
    MapView()
}
