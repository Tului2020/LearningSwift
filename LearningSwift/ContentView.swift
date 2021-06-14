//
//  ContentView.swift
//  LearningSwift
//
//  Created by Tului Gantulga on 5/25/21.
//

import SwiftUI

struct ContentView: View {
    //123456
    static let codeDigits = 6
    @State var codeDict: [Int: String] = Dictionary<Int, String>(uniqueKeysWithValues: (0..<codeDigits).map{($0, "")})
    @State var firstResponderIndex = 0
    
    var body: some View {
        
        VStack {
            Text("Hello, OneTimeCodeBoxes!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity)
            
            OneTimeCodeBoxes(codeDict: $codeDict, firstResponderIndex: $firstResponderIndex)
                .padding()
                .foregroundColor(.black)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Resend Code")
                    .underline()
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color.red)
                Spacer()
            })
            .padding()
            Spacer()
        }
        .padding(.vertical)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
