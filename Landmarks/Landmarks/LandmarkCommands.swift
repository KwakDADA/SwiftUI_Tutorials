//
//  LandmarkCommands.swift
//  Landmarks
//
//  Created by 곽다은 on 12/18/24.
//

import SwiftUI

struct LandmarkCommands: Commands {
    // track the currently selected landmark
    @FocusedBinding(\.selectedLandmark) var selectedLandmark
    
    // Like a View structure, a Commands structure requires a computed body property that uses builder semantics, except with commands instead of views.
    var body: some Commands {
        // This built-in command set includes the command for toggling the sidebar.
        SidebarCommands()
        
        CommandMenu("Landmark") {
            Button("\(selectedLandmark?.isFavorite == true ? "Remove" : "Mark") as Favorite") {
                selectedLandmark?.isFavorite.toggle()
            }
            .keyboardShortcut("f", modifiers: [.shift, .option])
            .disabled(selectedLandmark == nil)
        }
    }
}

private struct SelectedLandmarkKey: FocusedValueKey {
    typealias Value = Binding<Landmark>
}

extension FocusedValues {
    var selectedLandmark: Binding<Landmark>? {
        get { self[SelectedLandmarkKey.self] }
        set { self[SelectedLandmarkKey.self] = newValue }
    }
}
