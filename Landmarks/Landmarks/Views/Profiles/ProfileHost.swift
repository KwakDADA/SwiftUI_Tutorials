//
//  ProfileHost.swift
//  Landmarks
//
//  Created by 곽다은 on 12/6/24.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editMode
    @Environment(ModelData.self) var modelData
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Spacer()
                EditButton()
            }
            
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                Text("Profile Editor")
            }
        }
        .padding()
    }
}

#Preview {
    // Even though this view doesn’t use a property with the @Environment property wrapper, ProfileSummary, a child of this view, does. So without the modifier, the preview fails.
    ProfileHost()
        .environment(ModelData())
}
