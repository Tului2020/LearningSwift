//
//  SecondPage.swift
//  LearningSwift
//
//  Created by Tului Gantulga on 6/13/21.
//

import SwiftUI

struct SecondPage: View {
    
    @EnvironmentObject var user: User
    
    var body: some View {
        NavigationView {
            VStack {
                
                NavigationLink(
                    destination: ThirdPage(),
                    label: {
                        Text("Third Page")
                    })
                
                Spacer()
                
                
                Group {
                    //Text("Hello")
                    TextField("username", text: self.$user.username)
                    //TextField("first name", text: self.$user.firstName)
                    //TextField("last name", text: self.$user.lastName)
                }
                .padding()
                .font(.title3)
                .background(Color.blue)
                .cornerRadius(20)
                
                
                
            }
        }
        
    }
}

struct SecondPage_Previews: PreviewProvider {
    static var previews: some View {
        SecondPage()
    }
}
