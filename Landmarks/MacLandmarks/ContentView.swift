//
//  ContentView.swift
//  MacLandmarks
//
//  Created by 곽다은 on 12/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
            .frame(minWidth: 700, minHeight: 300)
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
