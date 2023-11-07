//
//  FrameworkGridView.swift
//  SwiftUI-Framework
//
//  Created by Haotian Li on 9/19/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks) {framework in
                    NavigationLink(
                        destination:
                            FrameworkDetailView(
                                framework: framework,
                                isShowingDrtailView: $viewModel.isShowingDetailView
                            )
                    ) {
                        FrameworkTitleView(framework: framework)
                    }
                    
                }
            }
            .navigationTitle("🍎 Frameworks")
        }
        .accentColor(Color(.label))
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}

