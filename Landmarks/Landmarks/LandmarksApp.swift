//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 곽다은 on 10/8/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
        #if !os (watchOS)
        // Scene Modifier
        .commands {
            // To make use of commands in an app, you have to apply them to a scene, which you’ll do next.
            LandmarkCommands() // 씬에 명령 추가
        }
        #endif
        
        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
        
        #if os(macOS)
        Settings {
            LandmarkSettings()
        }
        #endif
    }
}
