//
//  ContentView.swift
//  AppStorage
//
//  Created by Haotian Li on 11/10/23.
//

import SwiftUI

struct Settings {
    static let firstNameKey = "firstName"
    static let lastNameKey = "lastName"
    static let isSubscriberKey = "isSubscriber"
}

struct ContentView: View {
    @AppStorage(Settings.firstNameKey) var firstName = ""
    @AppStorage(Settings.lastNameKey) var lastName = ""
    @AppStorage(Settings.isSubscriberKey) var isSubscriber = false
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section("Info") {
                        TextField("First Name", text: $firstName)
                        TextField("Last Name", text: $lastName)
                    }
                    
                    Section("Preferences") {
                        Toggle("Is Subscribed", isOn: $isSubscriber)
                    }
                }
            }
            .navigationTitle("🗄️ App Storage")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
