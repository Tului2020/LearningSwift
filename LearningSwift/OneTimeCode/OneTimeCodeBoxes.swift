//
//  OneTimeCodeBoxes.swift
//  LearningSwift
//
//  Created by Tului Gantulga on 6/13/21.
//

import SwiftUI

struct OneTimeCodeBoxes: View {
    
    @Binding var codeDict: [Int: String];
    @Binding var firstResponderIndex: Int;
    
    var body: some View {
        HStack {
            ForEach(0..<codeDict.count) { i in
                OneTimeCodeInput(
                    index: i,
                    codeDict: $codeDict,
                    firstResponderIndex: $firstResponderIndex,
                    onCommit: {print("commiteedddd!!!!!!!!!!!!!!!!!!!!")})
                    .aspectRatio(1, contentMode: .fit)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke()
                                .foregroundColor(.secondary))
                
            }
        }
    }
}

struct OneTimeCodeBoxes_Previews: PreviewProvider {
    static var previews: some View {
        OneTimeCodeBoxes(codeDict: .constant([0:"", 1:"", 2:"", 3:""]), firstResponderIndex: .constant(0))
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
