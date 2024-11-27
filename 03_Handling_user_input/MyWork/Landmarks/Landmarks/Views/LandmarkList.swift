//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 곽다은 on 10/10/24.
//

import SwiftUI

struct LandmarkList: View {
    // State is a value, or a set of values, that can change over time,
    // and that affects a view’s behavior, content, or layout.
    @State private var showFavoritesOnly = true
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List(filteredLandmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
