/*
See LICENSE folder for this sample’s licensing information.
*/

import SwiftUI

@main
struct MyApp: App {
    // The computed body property can return one or more primary and secondary scenes.
    var body: some Scene {
        // With two separate view hierarchies defined, the sample must specify which one to use based on the target platform.
        #if os(iOS)
        MyScene()
        #elseif os(macOS)
        MyAlternativeScene()
        #endif
    }
}
