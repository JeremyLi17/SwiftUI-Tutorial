//
//  ContentView.swift
//  NavStack
//
//  Created by Jeremy on 2023/11/9.
//

import SwiftUI

struct Company: Identifiable, Hashable {
    var id = UUID()
    let name: String
}

struct Stock: Identifiable, Hashable {
    var id = UUID()
    let ticker: String
}

struct ContentView: View {
    @State private var companies: [Company] = [
        Company(name: "Apple"),
        Company(name: "Google"),
        Company(name: "Amazon"),
        
        // can also use .init() to create a struct
        .init(name: "Meta"),
        .init(name: "OpenAI"),
    ]
    
    @State private var stocks: [Stock] = [
        Stock(ticker: "GOOG"),
        Stock(ticker: "MSFT"),
        .init(ticker: "AAPL"),
        .init(ticker: "FB"),
    ]
    
    @State var path: [Company] = []
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                List(companies) { company in
                    NavigationLink(company.name, value: company)
                }
                .navigationDestination(for: Company.self) { company in
                    VStack {
                        Text(company.name)
                        
                        Button {
                            path = []
                        } label: {
                            Text("Back to Root")
                                .padding()
                        }
                    }
                }
                
                Button {
                    path = [
                        companies[2],
                        companies[0],
                        companies[1],
                    ]
                } label: {
                    Text("Stack Views")
                        .padding()
                }
            }
        }
//        NavigationStack {
//            List {
//                Section("Section A") {
//                    ForEach(companies) { company in
//                        NavigationLink(company.name, value: company)
//                    }
//                }
//                
//                Section("Section B") {
//                    ForEach(stocks) { stock in
//                        NavigationLink(stock.ticker, value: stock)
//                    }
//                }
//            }
//            // different navigationDestination will match different Link
//            // the for: will match the type of value: in NavigationLink
//            .navigationDestination(for: Company.self) { company in
//                Text(company.name)
//            }
//            .navigationDestination(for: Stock.self) { stock in
//                Text(stock.ticker)
//                    .font(.headline)
//                    .foregroundColor(.red)
//            }
//        }
    }
}

#Preview {
    ContentView()
}
