//
//  Landmark.swift
//  Landmarks
//
//  Created by 곽다은 on 10/9/24.

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    // for private: because users of the Landmarks structure care only about the image itself
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    // manage information about the landmark’s location
    private var coordinates: Coordinates
    var locationCoordicate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    // reflects the storage in the JSON data structure
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
