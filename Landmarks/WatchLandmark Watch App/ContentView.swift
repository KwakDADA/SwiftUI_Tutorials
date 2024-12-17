//
//  ContentView.swift
//  WatchLandmark Watch App
//
//  Created by 곽다은 on 12/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
