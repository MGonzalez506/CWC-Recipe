//
//  ContentView.swift
//  CWC-Receta-Challenges
//
//  Created by MIGUEL GONZALEZ on 14/1/23.
//

import SwiftUI

struct ContentView: View {
    // Create instance of PizzaModel
    let pizzas = PizzaModel()
    
    var body: some View {
        VStack {
            List(pizzas.pizzasList) { pizza in
                Text(pizza.name)
                    .font(.title)
                HStack {
                    Text(pizza.topping1)
                    Text("-")
                    Text(pizza.topping2)
                    Text("-")
                    Text(pizza.topping3)
                }
            }
            Button("Add Pinapple") {
                <#code#>
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
