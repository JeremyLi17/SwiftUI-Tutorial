//
//  SafariView.swift
//  SwiftUI-Framework
//
//  Created by Haotian Li on 10/6/23.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    
    let url: URL
    
    func makeUIViewController(
        context: UIViewControllerRepresentableContext<SafariView>
    ) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(
        _ uiViewController: SFSafariViewController,
        context: UIViewControllerRepresentableContext<SafariView>
    ) {}
}
