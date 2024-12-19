/*
See LICENSE folder for this sample’s licensing information.
*/

import SwiftUI

struct MyScene: Scene {
    var body: some Scene {
        // This WindowGroup describes the view hierarchy of the sample’s main window.
        WindowGroup {
            // The root node of the view hierarchy is TabView, a container view that provides tabs that people can use to switch between different subviews.
            TabView {
                // ContentView displays a list of journal entries.
                ContentView()
                    // Each of these views apply the tabItem(_:) modifier, which tells the TabView the image and text to display in each tab.
                    .tabItem {
                        Label("Journal", systemImage: "book")
                    }
                // SettingsView displays other views that let people edit the settings for the app, such as the account associated with the journal.
                SettingsView()
                    .tabItem {
                        Label("Settings", systemImage: "gear")
                    }
            }
        }
    }
}
