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
                .cornerRadius(5)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .bold()
                // using conditional compilation is appropriate because the differences are small.
                #if !os(watchOS)
                Text(landmark.park)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                #endif
            }
            
            Spacer()
            
            // In SwiftUI blocks, use if statements to conditionally include views.
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow) // system images are vector based, it can be changed their color with the foregroundStyle(_:) modifier.
            }
        }
        .padding(.vertical, 4)
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
    let landmarks = ModelData().landmarks
    
    return Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}
