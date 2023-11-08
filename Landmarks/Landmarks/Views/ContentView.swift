//
//  ContentView.swift
//  Landmarks
//
//  Created by Haotian Li on 11/7/23.
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
