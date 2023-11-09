//
//  SideMenuView.swift
//  SideMenu
//
//  Created by Jeremy on 2023/11/8.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack {
            Text("Settings")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
            
            Divider()
                .frame(width: 200, height: 2)
                .background(.white)
                .padding(.horizontal, 16)
                .blur(radius: 0.5)
            
            Link(
                destination: URL(string: "https://www.apple.com")!,
                label: {
                    Text("Apple")
                        .font(.title)
                }
            )
            
            
            Spacer()
        }
        .padding(32 ) 
        .background(.black)
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    SideMenuView()
}
