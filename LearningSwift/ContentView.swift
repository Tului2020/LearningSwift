//
//  ContentView.swift
//  LearningSwift
//
//  Created by Tului Gantulga on 5/25/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var user = User();
    
    var body: some View {
        VStack {
            Group {
                TextField("username", text: self.$user.username)
                TextField("first name", text: self.$user.firstName)
                TextField("last name", text: self.$user.lastName)
            }
            .padding()
            .font(.title3)
            .background(Color.blue)
            .cornerRadius(20)
            
            
            
        }

        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

class User: ObservableObject {
    @Published var username: String = "Tului2020"
    @Published var firstName: String = "Tului"
    @Published var lastName: String = "Gantulga"
}

