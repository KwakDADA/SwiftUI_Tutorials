//
//  ContentView.swift
//  Landmarks
//
//  Created by 곽다은 on 10/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                Spacer() // to direct the layout to use the full width of the device
                Text("California")
                    .font(.subheadline)
            }
        }
        .padding() // to give the landmark's name and details a little more space around their outer edges
    }
}

#Preview {
    ContentView()
}
