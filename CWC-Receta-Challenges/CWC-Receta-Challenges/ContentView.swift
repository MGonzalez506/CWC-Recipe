//
//  ContentView.swift
//  CWC-Receta-Challenges
//
//  Created by MIGUEL GONZALEZ on 14/1/23.
//

import SwiftUI

struct ContentView: View {
    // Create list of elements
    @State var numbers:[Int] = []
    
    var body: some View {
        VStack {
            HStack {
                Button("ADD DIGIT") {
                    addDigit()
                }
                Button("INCREASE DIGITS") {
                    
                }
                Button("CLEAR ALL") {
                    
                }
            }
        }
    }
    
    func addDigit(){
        // Generate random number from 1 to 10
        let number = Int.random(in: 1...10)
        numbers.append(number)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
