/*
See LICENSE folder for this sample’s licensing information.
*/

import SwiftUI

// @main indicate the entry point of the SwiftUI app.
// A SwiftUI app contains one and only one entry point. Attempting to apply @main to more than one structure in the app results in a compiler error.
@main
// MyApp structure conforms to the App protocol, and provides the content of the app and its behavior.
struct MyApp: App {
    // The structure implements the computed property body, which is a requirement of the App protocol.
    // This property returns the contents of your app described as a Scene.
    // A scene contains the view hierarchy that defines the app’s user interface. SwiftUI provides different types of scenes including WindowGroup, Window, DocumentGroup, and Settings.
    var body: some Scene {
        // This sample uses a WindowGroup scene to represent the main window that the app displays.
        WindowGroup {
            // The scene contains ContentView, a custom view that creates a view hierarchy that consists of an image and text.
            ContentView()
        }
    }
}
