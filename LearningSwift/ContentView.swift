//
//  ContentView.swift
//  LearningSwift
//
//  Created by Tului Gantulga on 5/25/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            

            Button("Click Me") {
                print("clicked")
            }
            
            
            Button(action: {
                print("button clicked")
            }, label: {
                Image("dealbutton")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
