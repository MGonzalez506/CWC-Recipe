//
//  ContentView.swift
//  CWC-Receta-Challenges
//
//  Created by MIGUEL GONZALEZ on 14/1/23.
//

import SwiftUI

struct ContentView: View {
    // Declare an @State property for an array of Strings
    @State var names:[String]?
    
    var body: some View {
        // Add two buttons in HStack container
        HStack {
            Button("Set array to nil") {
                
            }
            Button("Set names") {
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
