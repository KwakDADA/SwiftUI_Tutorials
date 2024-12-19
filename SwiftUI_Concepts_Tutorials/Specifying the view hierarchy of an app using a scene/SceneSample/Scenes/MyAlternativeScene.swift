/*
See LICENSE folder for this sample’s licensing information.
*/

import SwiftUI

struct MyAlternativeScene: Scene {
    var body: some Scene {
        WindowGroup {
            AlternativeContentView()
        }
        
        #if os(macOS)
        // The sample uses the secondary scene Settings to provide a Settings menu item that’s available in the app menu, which is a common feature of Mac apps.
        // The Settings scene is only available in macOS.
        Settings {
            // The Settings scene contains the custom view, SettingView, which displays app settings in a window that the Settings menu item provides.
            SettingsView()
        }
        #endif
    }
}
