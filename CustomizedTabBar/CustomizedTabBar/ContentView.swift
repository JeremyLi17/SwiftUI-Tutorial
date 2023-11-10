//
//  ContentView.swift
//  CustomizedTabBar
//
//  Created by Haotian Li on 11/9/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Tab = .house
    
    init() {
        // hide the default tabBar
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack {
            VStack {
                TabView(selection: $selectedTab) {
                    ForEach(Tab.allCases, id: \.rawValue) { tab in
                        HStack {
                            Image(systemName: tab.rawValue)
                            Text("\(tab.rawValue.capitalized)")
                                .bold()
                                .animation(nil, value: selectedTab)
                        }
                        .tag(tab)
                    }
                }
            }
            
            VStack {
                Spacer()
                TabBar(selectedTab: $selectedTab)
            }
        }
    }
}

#Preview {
    ContentView()
}
