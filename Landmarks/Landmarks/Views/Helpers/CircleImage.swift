//
//  CircleImage.swift
//  Landmarks
//
//  Created by 곽다은 on 10/8/24.
//

import SwiftUI

// instead of adding more code in this file
// create a custom view that applies a mask, border, and drop shadow to the image

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4) // give the image a border
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
