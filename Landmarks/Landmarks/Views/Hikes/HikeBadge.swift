//
//  HikeBadge.swift
//  Landmarks
//
//  Created by 곽다은 on 12/6/24.
//

import SwiftUI

struct HikeBadge: View {
    var name: String
    
    var body: some View {
        VStack(alignment: .center) {
            // 처음에 frame을 통해 원하는 모양을 잡아주고, scale변경 후, 변경된 scale에 맞춰 frame을 다시 잡아주면 원하는 모양과 크기의 뱃지를 얻을 수 있다.
            Badge()
                .frame(width: 300, height: 300)
                .scaleEffect(1.0 / 3.0)
                .frame(width: 100, height: 100)
            Text(name)
                .font(.caption)
                .accessibilityLabel("Badge for \(name).")
        }
    }
}

#Preview {
    HikeBadge(name: "Preview Testing")
}
