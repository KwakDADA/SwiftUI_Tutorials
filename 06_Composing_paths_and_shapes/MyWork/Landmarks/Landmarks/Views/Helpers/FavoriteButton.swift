//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by 곽다은 on 11/27/24.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            /// The title string that you provide for the button’s label doesn’t appear in the UI when you use the iconOnly label style,
            /// but VoiceOver uses it to improve accessibility.
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
