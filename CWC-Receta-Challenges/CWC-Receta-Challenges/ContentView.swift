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
    
    var body: some View {
        VStack {
            Spacer()
            Spacer()
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
