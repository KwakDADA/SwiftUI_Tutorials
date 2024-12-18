//
//  LandmarkCommands.swift
//  Landmarks
//
//  Created by 곽다은 on 12/18/24.
//

import SwiftUI

struct LandmarkCommands: Commands {
    // Like a View structure, a Commands structure requires a computed body property that uses builder semantics, except with commands instead of views.
    var body: some Commands {
        // This built-in command set includes the command for toggling the sidebar.
        SidebarCommands()
    }
}
