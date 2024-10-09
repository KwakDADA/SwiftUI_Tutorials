//
//  MapView.swift
//  Landmarks
//
//  Created by 곽다은 on 10/8/24.
//

import SwiftUI
import MapKit // to render the map

struct MapView: View {
    var body: some View {
        // takes the camera position that initialzed with the region
        Map(initialPosition: .region(region))
    }
    
    // holds the region information for the map
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    MapView()
}
