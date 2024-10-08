//
//  ContentView.swift
//  Landmarks
//
//  Created by 곽다은 on 10/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300) // the view automatically sizes to the width of its content
            
            CircleImage()
                .offset(y: -130) // to layer the image view on top of the map view
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer() // to direct the layout to use the full width of the device
                    Text("California")
                }
                .font(.subheadline) // applies the modifier to all the elements contained in the group
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Desciptive text goes here.")
            }
            .padding() // to give the landmark's name and details a little more space around their outer edges
            
            Spacer() // to push the content to the top of the screen
        }
    }
}

#Preview {
    ContentView()
}
