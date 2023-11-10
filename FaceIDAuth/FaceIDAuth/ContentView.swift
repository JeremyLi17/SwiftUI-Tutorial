//
//  ContentView.swift
//  FaceIDAuth
//
//  Created by Haotian Li on 11/8/23.
//

import SwiftUI
import LocalAuthentication

struct ContentView: View {
    @State private var unlock = false
    @State private var text = "LOCKED"
    
    var body: some View {
        VStack {
            Text(text)
                .bold()
                .padding()
            
            Button("Authenticate") {
                authenticate()
            }
        }
    }
    
    func authenticate() {
        let context = LAContext()
        var error: NSError?
        
        if context.canEvaluatePolicy(
            .deviceOwnerAuthenticationWithBiometrics,
            error: &error
        ) {
            context.evaluatePolicy(
                .deviceOwnerAuthenticationWithBiometrics,
                localizedReason: "The App need use FACEID to verify your identity") {
                    success, authenticationError in
                    
                    if success {
                        text = "UNLOCK"
                    } else {
                        text = "NOT AUTHENTICATED"
                    }
            }
        } else {
            // use other method to login
            text = "Your Phone does not have Biometrices authentication"
        }
    }
}

#Preview {
    ContentView()
}
