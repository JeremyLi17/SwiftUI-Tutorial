//
//  CardView.swift
//  StretchyHeader
//
//  Created by Haotian Li on 11/10/23.
//

import SwiftUI

struct CardView: View {
    let data: CardData
    
    var body: some View {
        HStack {
            Image("app\(data.id)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .cornerRadius(8.0)
            
            VStack(alignment: .leading) {
                Text("\(data.title)")
                    .bold()
                    .font(.system(size: 24))
                    .padding(.bottom, 5)
                Text("Offer In-App Purchases")
                    .font(.system(size: 18))
            }
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Text("GET")
                    .padding()
                    .foregroundColor(.blue)
                    .background(Color(.systemGray6))
            })
        }
    }
}

#Preview {
    CardView(data: CardData(id: 2, title: "Coc"))
}
