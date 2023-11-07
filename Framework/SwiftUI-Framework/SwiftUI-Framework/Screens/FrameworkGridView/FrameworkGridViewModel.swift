//
//  FrameworkGridViewModel.swift
//  SwiftUI-Framework
//
//  Created by Haotian Li on 10/6/23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    let columns: [GridItem] = [
        GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())
    ]
}
