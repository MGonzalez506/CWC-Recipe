//
//  ViewPizzas.swift
//  CWC-Receta-Challenges
//
//  Created by MIGUEL GONZALEZ on 23/1/23.
//

import SwiftUI

struct ViewPizzas: View {
    // Create instance of PizzaModel
    @ObservedObject var pizzas = PizzaModel()
    
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
                pizzas.addPinapple()
            }
            .buttonStyle(BasicBtnStyle())
        }
    }
}

struct ViewPizzas_Previews: PreviewProvider {
    static var previews: some View {
        ViewPizzas()
    }
}
