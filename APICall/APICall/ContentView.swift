//
//  ContentView.swift
//  APICall
//
//  Created by Haotian Li on 11/9/23.
//

import SwiftUI



struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.courses, id: \.self) { course in
                    HStack {
                        URLImage(urlString: course.image)
                        Text(course.name)
                            .bold()
                    }
                }
            }
            .navigationTitle("👨‍🏫 Courses")
            .onAppear {
                viewModel.fetch()
            }
        }
    }
}

#Preview {
    ContentView()
}
