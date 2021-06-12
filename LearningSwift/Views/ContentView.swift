//
//  ContentView.swift
//  LearningSwift
//
//  Created by Tului Gantulga on 5/25/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var randomNum: Int = 0;
    @State var showModal: Bool = false;
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                
                NavigationLink(
                    destination: SecondPage(randomNum: self.$randomNum),
                    label: {
                        Text("Go Next")
                    })
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding()
                    
                HStack {
                    Text("Lucky number")
                    
                    Text("\(randomNum)")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                }
                
                Group {
                    
                    Button(action: {
                        self.randomNum = Int.random(in: 0...10)
                    }, label: {
                        Text("New Number")
                    })
                    
                    Button(action: {
                        self.showModal.toggle()
                    }, label: {
                        Text("Show Modal")
                    })
                    
                }
                .frame(width: 150)
                .foregroundColor(.white)
                .padding(5)
                .background(Color.blue)
                .cornerRadius(7)
            }
            .sheet(isPresented: $showModal, content: {
                Text("test")
            })
            
            
        }
        
        
        
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
