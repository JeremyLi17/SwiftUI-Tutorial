//
//  ContentView.swift
//  BottomCard
//
//  Created by Haotian Li on 11/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isCardShow = false
    @State private var isCardDismiss = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Button {
                    isCardShow.toggle()
                    isCardDismiss.toggle()
                } label: {
                    Text("Show Card")
                        .bold()
                        .foregroundColor(.white)
                        .frame(width: 200, height: 50)
                        .background(.blue)
                        .cornerRadius(10)
                        .padding()
                        
                }
                
                BottomCard(
                    isCardShow: $isCardShow,
                    isCardDismiss: $isCardDismiss,
                    height: UIScreen.main.bounds.height / 2.2
                ) {
                    VStack {
                        Text("Landmark")
                            .bold()
                            .font(.system(size: 30))
                            .padding()
                        
                        Text("Truly, this great landmark is a jewel in the crown of the city, creativity, and cultural vibrancy that defines the locale.")
                            .font(.system(size: 18))
                            .frame(maxWidth: UIScreen.main.bounds.width)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 20)
                        
                        Image("landmark")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                .animation(.default, value: 1.0)
            }
        }
    }
}

#Preview {
    ContentView()
}
