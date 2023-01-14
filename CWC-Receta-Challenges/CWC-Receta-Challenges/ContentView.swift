//
//  ContentView.swift
//  CWC-Receta-Challenges
//
//  Created by MIGUEL GONZALEZ on 14/1/23.
//

import SwiftUI

struct card {
    var cardNumber = 1
    var cardSuit = "Spades"
}

struct ContentView: View {
    
    // Create an instance of your playing card structure
    var deck:[card] = [card]()
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
