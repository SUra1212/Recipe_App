//
//  LocationView.swift
//  Recipe App
//
//  Created by Surath Chathuranga on 2023-06-14.
//

import MapKit
import SwiftUI

struct Location: Identifiable {
    let id = UUID()
    let locationName: String
    let coordinate: CLLocationCoordinate2D
}


struct LocationView: View {
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.9271, longitude: 79.8612), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    let locations = [
        Location(locationName: "Surath Recipe", coordinate: CLLocationCoordinate2D(latitude: 6.9271, longitude: 79.8612))
    ]
    
    
    var body: some View {
        NavigationView {
            Map(coordinateRegion: $mapRegion, annotationItems: locations) { location in
                MapMarker(coordinate: location.coordinate)
            }
            .navigationTitle("Our Location")
            
        }
        
        .navigationViewStyle(StackNavigationViewStyle()) // Adjust navigation view style for better appearance
    }
       
}


struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
