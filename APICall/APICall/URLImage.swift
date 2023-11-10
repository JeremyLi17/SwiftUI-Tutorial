//
//  URLImage.swift
//  APICall
//
//  Created by Haotian Li on 11/9/23.
//

import SwiftUI

struct URLImage: View {
    let urlString: String
    
    @State var data: Data?
    
    var body: some View {
        if let data = data, let uiImage = UIImage(data: data) {
            Image(uiImage: uiImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 130, height: 70)
                .background(.gray)
        } else {
            // placeholder
            Image(systemName: "video.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
                .frame(width: 130, height: 70)
                .background(.gray)
                .onAppear {
                    fetchData()
                }
        }
    }
    
    private func fetchData() {
        guard let url = URL(string: urlString) else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, _ in
            self.data = data
        }
        
        task.resume()
    }
}

#Preview {
    Group {
        URLImage(urlString: "")
        URLImage(urlString: "https://blog.hootsuite.com/wp-content/uploads/2022/12/Facebook-Cover-Photos-13.png")
    }
}
