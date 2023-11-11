//
//  ContentView.swift
//  StretchyHeader
//
//  Created by Haotian Li on 11/10/23.
//

import SwiftUI

struct CardData: Hashable {
    let id: Int
    let title: String
}

struct ContentView: View {
    
    let appNames = [
        "Temple Run",
        "Clash of Clans",
        "Anipop",
        "Knight",
        "Calculus"
    ]
    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                // header
                GeometryReader { geo in
                    let global = geo.frame(in: .global)
                    
                    Image("poster")
                        .resizable()
                        .offset(y: global.minY > 0 ? -global.minY : 0)
                        .frame(height: global.minY > 0 ? (UIScreen.main.bounds.height / 2.2 + global.minY) : UIScreen.main.bounds.height / 2.2
                        )
                }
                .frame(height: UIScreen.main.bounds.height / 2.2)
                
                
                // app cards
                VStack {
                    ForEach(1...5, id: \.self) { num in
                        let data = CardData(id: num, title: appNames[num - 1])
                        
                        CardView(data: data)
                            .padding(.bottom)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
