//
//  CategoryItem.swift
//  Landmarks
//
//  Created by 곽다은 on 11/28/24.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landmark.name)
                .font(.caption)
        }
    }
}

#Preview {
    CategoryItem(landmark: ModelData().landmarks[0])
}
