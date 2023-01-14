//
//  ContentView.swift
//  CWC-Receta-Challenges
//
//  Created by MIGUEL GONZALEZ on 14/1/23.
//

import SwiftUI

struct card:Equatable {
    var cardNumber = 1
    var cardSuit = "Spades"
}

struct ContentView: View {
    
    // Create an instance of your playing card structure
    @State var deck:[card] = [card]()
    // Create an array with the 4 main suits
    var suits = ["Spades", "Clubs", "Hearts", "Diamonds"]
    // Create an array with the 4 special Cards in a deck
    var specialCards = ["Ace","Jack","Queen","King"]
    
    var body: some View {
        VStack {
            Spacer()
            Text("Resultado")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.pink)
            Spacer()
            HStack {
                Spacer()
                Button("Nueva Carta") {
                    // Create an instance of card
                    var newCard = card()
                    // Assign to newCard a random number from 1 to 13
                    newCard.cardNumber = Int.random(in: 1...13)
                    // Assign to newCard a random suit from the 4 available
                    newCard.cardSuit = suits[Int.random(in: 0...3)]
                    // Check if combination is already in array
                    if deck.contains(newCard){
                        // The combination is not in the array
                        // Therefore append it
                        print("Ya existía: \(newCard.cardNumber) suit: \(newCard.cardSuit)")
                    } else {
                        // The combination is alreay in the array
                        // Therefore do not append
                        print("New combination: \(newCard.cardNumber) suit: \(newCard.cardSuit)")
                        deck.append(newCard)
                    }
                }
                Spacer()
                Spacer()
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
