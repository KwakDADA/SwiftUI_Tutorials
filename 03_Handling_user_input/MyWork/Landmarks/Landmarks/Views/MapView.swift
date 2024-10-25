//
//  MapView.swift
//  Landmarks
//
//  Created by 곽다은 on 10/8/24.
//

import SwiftUI
import MapKit // to render the map

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    var body: some View {
        // updates when the value changes
        // this initializer expects a Binding to a position, which is a bidirectional connection to the value
        Map(position: .constant(.region(region)))
    }
    
    // holds the region information for the map
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
