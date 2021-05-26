//
//  ContentView.swift
//  LearningSwift
//
//  Created by Tului Gantulga on 5/25/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card2"
    @State var cpuCard = "card2"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        
        ZStack {
            // Background (Color: Green)
            Image("background").ignoresSafeArea()

            
            VStack(spacing: 100) {
                // 1. War Logo
                Image("logo")
                
                
                // 2. Cards
                HStack(spacing: 100) {
                    Image(playerCard)
                    Image(cpuCard)
                }
                
                // 3. Deal Button
                
                
                Button(action: {
                    
                    let cpuCardNum = Int.random(in:2..<15)
                    let playerCardNum = Int.random(in:2..<15)
                    
                    playerCard = "card" + String(playerCardNum)
                    cpuCard = "card" + String(cpuCardNum)
                    
                    if (cpuCardNum > playerCardNum) {
                        cpuScore += 1
                    } else if (cpuCardNum < playerCardNum) {
                        playerScore += 1
                    }
                    
                    
                    
                    
                    
                }, label: {
                    Image("dealbutton")
                })
                
                
                // 4. Game Stats
                HStack(spacing: 10) {
                    // 4a. Player and CPU
                    VStack(spacing: 30) {
                        Text("Player").foregroundColor(.white).font(.system(size: 20))
                        Text(String(playerScore)).foregroundColor(.white).font(.system(size: 30))
                    }
                    
                    // 4b. Score
                    VStack(spacing: 30) {
                        Text("CPU").foregroundColor(.white).font(.system(size: 20))
                        Text(String(cpuScore)).foregroundColor(.white).font(.system(size: 30))
                    }
                }
                
                
            }
           
                
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
