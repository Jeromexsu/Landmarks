//
//  MapView.swift
//  Landmarks
//
//  Created by JeremySu on 3/5/2024.
//

import SwiftUI
import MapKit

struct MapView: View {
    var location: CLLocationCoordinate2D
    
    var body: some View {
        Map(initialPosition:.region(region))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: location,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    MapView(location: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
