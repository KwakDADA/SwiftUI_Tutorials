//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by 곽다은 on 10/10/24.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(landmark.name)
            
            Spacer()
        }
    }
}

// Give each preview a name to help distinguish between them.
//#Preview("Turtle Rock") {
//    LandmarkRow(landmark: landmarks[0])
//}
//
//#Preview("Salmon") {
//    LandmarkRow(landmark: landmarks[1])
//}

// preview different versions of a view side by side
#Preview {
    // Group is a container for grouping view content.
    // Xcode renders the group’s child views stacked as one preview in the canvas.
    Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}
