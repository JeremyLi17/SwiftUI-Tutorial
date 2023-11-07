//
//  XDismissButton.swift
//  SwiftUI-Framework
//
//  Created by Haotian Li on 10/6/23.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowModal: Bool
    
    var body: some View {
        HStack {
            Spacer()
            
            Button {
                isShowModal = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }.padding()
    }
}

#Preview {
    XDismissButton(isShowModal: .constant(true))
}
