//
//  ContentView.swift
//  CWC-Receta-Challenges
//
//  Created by MIGUEL GONZALEZ on 14/1/23.
//

import SwiftUI

struct ContentView: View {
    // Create array of words
    let palabras = ["Hola", "desde", "CostaRica","el","paísMásFeliz"]
    var body: some View {
        VStack {
            Text("Hola")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
