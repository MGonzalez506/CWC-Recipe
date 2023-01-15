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
            Spacer()
            List(numbers, id: \.self) { numberElement in
                Text(String(numberElement))
            }
            Spacer()
            HStack {
                Button("ADD DIGIT") {
                    addDigit()
                }
                Button("INCREASE DIGITS") {
                    
                }
                Button("CLEAR ALL") {
                    
                }
            }
            Spacer()
        }
    }
    
    func addDigit(){
        // Generate random number from 1 to 10
        let number = Int.random(in: 1...10)
        if number != 7 {
            // Add random number to list
            numbers.append(number)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
