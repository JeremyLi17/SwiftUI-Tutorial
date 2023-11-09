//
//  ContentView.swift
//  SideMenu
//
//  Created by Jeremy on 2023/11/8.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showMenu: Bool = false
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Color.mint.ignoresSafeArea()
                
                Text("Hello, world!")
                
                GeometryReader { geo in
                    HStack {
                        Spacer()
                        SideMenuView()
                            .offset(x: showMenu ? 0 : UIScreen.main.bounds.width)
                            .animation(.easeInOut(duration: 0.3), value: showMenu)
                    }
                }
                .background(.black.opacity(showMenu ? 0.5 : 0))
            }
            .navigationTitle("Side Menu Demo")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button {
                    showMenu.toggle()
                }  label: {
                    if showMenu {
                        Image(systemName: "xmark")
                            .font(.title)
                            .foregroundColor(.white)
                    } else {
                        Image(systemName: "text.justify")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
