//
//  SecondPage.swift
//  LearningSwift
//
//  Created by Tului Gantulga on 6/11/21.
//

import SwiftUI

struct SecondPage: View {
    @Binding var randomNum: Int
    
    var body: some View {
        VStack {
            
            
            Text("\(randomNum)")
            
            
            Button(action: {
                randomNum = Int.random(in: 0...10)
            }, label: {
                Text("New Number")
            })
            .frame(width: 150)
            .foregroundColor(.white)
            .padding(5)
            .background(Color.blue)
            .cornerRadius(7)
            
            
        }
    }
}

struct SecondPage_Previews: PreviewProvider {
    static var previews: some View {
        SecondPage(randomNum: .constant(1))
    }
}
