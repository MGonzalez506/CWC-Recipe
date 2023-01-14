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
    
    // Message to display in the label
    @State var message = "Resultado"
    // Create an array with the 4 main suits
    var suits = ["Spades", "Clubs", "Hearts", "Diamonds"]
    // Create an array with the 4 special Cards in a deck
    var specialCards = ["Ace","Jack","Queen","King"]
    
    var body: some View {
        VStack {
            Spacer()
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.pink)
            Spacer()
            HStack {
                Spacer()
                Button("Nueva Carta") {
                    addCard()
                }
                Spacer()
                Spacer()
            }
            Spacer()
        }
        .padding()
    }
    
    func addCard() {
        // Create an instance of card
        var newCard = card()
        // Assign to newCard a random number from 1 to 13
        newCard.cardNumber = Int.random(in: 1...13)
        // Assign to newCard a random suit from the 4 available
        newCard.cardSuit = suits[Int.random(in: 0...3)]
        // Check if combination is already in array
        let specialCard = checkSpecialCard(cardNumber: newCard.cardNumber)
        if deck.contains(newCard){
            // The combination is not in the array
            // Therefore append it
            message = "The card \(specialCard) of \(newCard.cardSuit) is already in the deck."
        } else {
            // The combination is alreay in the array
            // Therefore do not append
            message = "Generated a \(specialCard) of \(newCard.cardSuit)"
            deck.append(newCard)
        }
    }
    
    func drawCard(){
        // Get a random card from deck
        let drewCard = deck.randomElement()!
        let cardSui = drewCard.cardSuit
        let cardNum = checkSpecialCard(cardNumber: drewCard.cardNumber)
        message = "Drew a \(cardNum) of \(cardSui)"
    }
    
    func checkSpecialCard(cardNumber:Int) -> String {
        // Check if number corresponds to a special card
        switch cardNumber {
        case 1:
            return "Ace"
        case 11:
            return "Jack"
        case 12:
            return "Queen"
        case 13:
            return "King"
        default:
            return String(cardNumber)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
