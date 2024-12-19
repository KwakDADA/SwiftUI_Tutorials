/*
See LICENSE folder for this sample’s licensing information.
*/

import SwiftUI

// ContentView is a structure that conforms to the View protocol.
// A view defines one or more visual elements that appear somewhere on a screen. A view is typically made up of other views, creating a view hierarchy.
struct ContentView: View {
    // ContentView implements the computed property body, just like the ‘MyApp’ structure does.
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}
