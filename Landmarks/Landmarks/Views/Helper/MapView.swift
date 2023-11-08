//
//  MapView.swift
//  Landmarks
//
//  Created by Haotian Li on 11/7/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    var body: some View {
//        Map(initialPosition: .region(region))   // Movable map view
        Map(position: .constant(.region(region)))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 41.890_278, longitude: 12.492_222))
}
