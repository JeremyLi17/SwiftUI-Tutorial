//
//  ContentView.swift
//  WebView
//
//  Created by Haotian Li on 11/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            WebView(url: URL(string: "https://www.apple.com/"))
                .navigationTitle("WebView")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
