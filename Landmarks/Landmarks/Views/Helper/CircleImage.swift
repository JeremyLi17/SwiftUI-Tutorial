//
//  CircleImage.swift
//  Landmarks
//
//  Created by Haotian Li on 11/7/23.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
//            .resizable()
//            .frame(width: 240, height: 240)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay {
                Circle().stroke(Color.gray, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: Image("landmark"))
}
