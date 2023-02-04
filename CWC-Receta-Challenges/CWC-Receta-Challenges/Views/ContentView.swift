//
//  ContentView.swift
//  CWC-Receta-Challenges
//
//  Created by MIGUEL GONZALEZ on 14/1/23.
//

import SwiftUI

struct ContentView: View {
    
    // Create an Observed object to list all the pizzas
    @ObservedObject var modelo = PizzaIngredientsModel()
    
    var body: some View {
        VStack {
            List(modelo.pizzas){ pizza in
                VStack(alignment: .leading) {
                    Text(pizza.name)
                        .font(.title)
                        .foregroundColor(.pink)
                        .fontWeight(.bold)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
