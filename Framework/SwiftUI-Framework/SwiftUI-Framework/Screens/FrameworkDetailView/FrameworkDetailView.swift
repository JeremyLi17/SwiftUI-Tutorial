//
//  FrameworkDetailView.swift
//  SwiftUI-Framework
//
//  Created by Haotian Li on 9/19/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(
            framework: MockData.sampleFramework
        )
        .preferredColorScheme(.dark)
    }
}
