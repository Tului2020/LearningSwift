//
//  ContentView.swift
//  LearningSwift
//
//  Created by Tului Gantulga on 5/25/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var user = User();
    
    var body: some View {
        
        NavigationView {
            VStack {
                
                NavigationLink(
                    destination: SecondPage(),
                    label: {
                        /*@START_MENU_TOKEN@*/Text("Navigate")/*@END_MENU_TOKEN@*/
                    })
                
                Spacer()
                
                
                Group {
                    TextField("username", text: self.$user.username)
                    //TextField("first name", text: "")
                    //TextField("last name", text: "")
                }
                .padding()
                .font(.title3)
                .background(Color.blue)
                .cornerRadius(20)
                
                
                
            }
        }
        .environmentObject(user)


        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

class User: ObservableObject {
    @Published var firstName = "Tului";
    @Published var lastName = "Gantulga"
    @Published var username = "Tului2020";
}


