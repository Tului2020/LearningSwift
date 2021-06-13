//
//  ThirdPage.swift
//  LearningSwift
//
//  Created by Tului Gantulga on 6/13/21.
//

import SwiftUI

struct ThirdPage: View {
    @ObservedObject private var user = User();
    var body: some View {
        NavigationView {
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
}

struct ThirdPage_Previews: PreviewProvider {
    static var previews: some View {
        ThirdPage()
    }
}
