//
//  ContentView.swift
//  WatchLandmark Watch App
//
//  Created by 곽다은 on 12/17/24.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
    var body: some View {
        LandmarkList()
            // SwiftUI calls this asynchronous task modifier when the content view first appears.
            .task {
                // request authorization to enable notifications from Notification Center.
                let center = UNUserNotificationCenter.current()
                _ = try? await center.requestAuthorization(
                    options: [.alert, .sound, .badge]
                )
            }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
