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
    // State of the buttons
    @State var message = "-"
    
    var body: some View {
        NavigationView {
            List(numbers, id: \.self) { numberElement in
                Text(String(numberElement))
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack {
                        Text("Tap a Button")
                            .font(.headline)
                        Text(message)
                            .font(.body)
                    }
                }
            }
        }
        HStack {
            Button("ADD DIGIT") {
                addDigit()
            }
            Button("INCREASE DIGITS") {
                increaseDigits()
            }
            Button("CLEAR ALL") {
                
            }
        }
    }
    
    func addDigit(){
        // Generate random number from 1 to 10
        let number = Int.random(in: 1...10)
        if number != 7 {
            // Add random number to list
            numbers.append(number)
            message = "Adding digit \(number)"
        } else {
            // Let user know that the random number is 7
            message = "Number 7 won't be added"
        }
    }
    
    func increaseDigits(){
        // Loop through numbers and get each index
        for index in 0...numbers.count-1 {
            // Add 1 to the number stored in the array
            // at that specific index
            numbers[index] += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
