//
//  ButtonCard.swift
//  BottomCard
//
//  Created by Haotian Li on 11/10/23.
//

import SwiftUI

struct BottomCard<Content: View>: View {
    @Binding var isCardShow: Bool
    @Binding var isCardDismiss: Bool
    let content: Content
    let height: CGFloat
    
    init(
        isCardShow: Binding<Bool>,
        isCardDismiss: Binding<Bool>,
        height: CGFloat,
        @ViewBuilder content: () -> Content
    ) {
        self.height = height
        _isCardShow = isCardShow
        _isCardDismiss = isCardDismiss
        self.content = content()
    }
    
    var body: some View {
        ZStack {
            GeometryReader { _ in
                EmptyView()
            }
            .background(.gray.opacity(0.5))
            .opacity(isCardShow ? 1 : 0)
            .animation(.easeInOut, value: 0.3)
            .onTapGesture {
                dismiss()
            }
            
            // card
            VStack {
                Spacer()
                VStack {
                    content
                    
                    Button(action: {
                        dismiss()
                    }, label: {
                        Text("Dismiss")
                            .foregroundColor(.white)
                            .frame(width: 200, height: 50)
                            .background(.pink)
                            .cornerRadius(8)
                    })
                    .padding()
                }
                .background(.white)
                .scaledToFill()
                .frame(height: height)
                .frame(maxWidth: UIScreen.main.bounds.width)
                .offset(y: isCardDismiss && isCardShow ? 0 : height + 10)
                .animation(.default.delay(0.1))
            }
        }
    }
    
    func dismiss() {
        // dismiss
        isCardDismiss.toggle()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
            isCardShow.toggle()
        }
    }
}

#Preview {
    BottomCard(
        isCardShow: .constant(true),
        isCardDismiss: .constant(true),
        height: 300
    ) {
        Text("hello")
    }
}
