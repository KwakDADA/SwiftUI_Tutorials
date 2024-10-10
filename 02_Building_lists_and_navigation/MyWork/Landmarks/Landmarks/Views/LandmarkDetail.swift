//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by 곽다은 on 10/10/24.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordicate)
                .frame(height: 300) // the view automatically sizes to the width of its content
            
            CircleImage(image: landmark.image)
                .offset(y: -130) // to layer the image view on top of the map view
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                    Spacer() // to direct the layout to use the full width of the device
                    Text(landmark.state)
                }
                .font(.subheadline) // applies the modifier to all the elements contained in the group
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding() // to give the landmark's name and details a little more space around their outer edges
        }
        .navigationTitle(landmark.name) // to give the navigation bar a title when showing the detail view
        .navigationBarTitleDisplayMode(.inline) // to make the title appear inline
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
