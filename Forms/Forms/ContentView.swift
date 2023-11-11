//
//  ContentView.swift
//  Forms
//
//  Created by Haotian Li on 11/10/23.
//

import SwiftUI

class FormViewModel: ObservableObject {
    @State var firstName = ""
    @State var lastName = ""
    @State var password = ""
    @State var confirmPassword = ""
    
    @State var streetAddr = ""
    @State var city = ""
    @State var state = ""
    @State var zipcode = ""
    @State var country = ""
}

struct ContentView: View {
    
    @StateObject var viewModel = FormViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section {
                        TextField("First Name", text: $viewModel.firstName)
                        TextField("Last Name", text: $viewModel.lastName)
                    }
                    
                    Section {
                        SecureField("Create Password", text: $viewModel.password)
                        SecureField("Confirm Password", text: $viewModel.confirmPassword)
                    } footer: {
                        Text("Your password need at least 8 characters long.")
                    }
                    
                    Section {
                        TextField("Street Address", text: $viewModel.streetAddr)
                        TextField("City", text: $viewModel.city)
                        TextField("State", text: $viewModel.state)
                        TextField("Postal Code", text: $viewModel.zipcode)
                        TextField("Country", text: $viewModel.country)
                    } header: {
                        Text("Mailing Address")
                    }
                }
                
                Button {
                    
                } label: {
                    Text("Continue")
                        .frame(width: 200, height: 50, alignment: .center)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8.0)
                }
                .padding()
            }
            .navigationTitle("Create Account")
        }
    }
}

#Preview {
    ContentView()
}
