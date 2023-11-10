import UIKit

struct PostResponse: Decodable {
    let id: Int
    let userId: Int
    let title: String
    let body: String
}

func makePOSTRequest() {
    guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
        return
    }
    
    let body: [String: AnyHashable] = [
        "userId": 1,
        "title": "Hello From iOS",
        "body": "An quick hello from My first iOS APP!!",
    ]
    
    var request = URLRequest(url: url)
    // Set method, body, headers
    request.httpMethod = "POST"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    request.httpBody = try? JSONSerialization.data(withJSONObject: body, options: .fragmentsAllowed)
    
    // Hit the api
    let task = URLSession.shared.dataTask(with: request) { data, _, error in
        guard let data = data, error == nil else {
            return
        }
        
        do {
//            let response = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
            let response = try JSONDecoder().decode(PostResponse.self, from: data)
            print("SUCCESS: \(response)")
        } catch {
            print(error)
        }
    }
    task.resume()
}

makePOSTRequest()
