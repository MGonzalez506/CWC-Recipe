//
//  ContentView.swift
//  CWC-Receta-Challenges
//
//  Created by MIGUEL GONZALEZ on 14/1/23.
//

import SwiftUI

struct ContentView: View {
    // Create array of Costa Rican phrases
    let frases = [
        "¿Al Chile?",
        "Colgar las tenis",
        "Dar por la nuca",
        "Está pal tigre",
        "Hablar paja",
        "Hay campo",
        "Ir en carreras",
        "La cereza del pastel",
        "La última chupada del mango",
        "Le amarraron el perro",
        "Mucho rinrin y nada de helados"
    ]
    // Create an array to display as list
    @State var lista:[String] = []
    
    var body: some View {
        VStack {
            Spacer()
            // Display list
            List(lista, id: \.self) { listElement in
                Text(listElement)
            }
            Spacer()
            Button("New word") {
                addWord()
            }
            .font(.headline)
            .foregroundColor(.pink)
            Spacer()
        }
        .padding()
    }
    
    func addWord() {
        lista.append(frases[Int.random(in: 0...(frases.count-1))])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
