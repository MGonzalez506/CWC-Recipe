//
//  ContentView.swift
//  CWC-Receta
//
//  Created by MIGUEL GONZALEZ on 14/1/23.
//

import SwiftUI

struct ContentView: View {
    // Array of elements
    let array = ["Element A", "Element B", "Element C", "Element D", "Element E"]
    
    var body: some View {
        List (array, id: \.self) { arrayElement in
            Text(arrayElement)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
