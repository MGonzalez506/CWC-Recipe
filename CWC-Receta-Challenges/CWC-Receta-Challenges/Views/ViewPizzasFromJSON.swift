//
//  ViewPizzasFromJSON.swift
//  CWC-Receta-Challenges
//
//  Created by MIGUEL GONZALEZ on 4/2/23.
//

import SwiftUI

struct ViewPizzasFromJSON: View {
    
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
                    if let topping = pizza.toppings {
                        Text(topping[0])
                            .foregroundColor(.pink)
                        Text(topping[1])
                            .foregroundColor(.pink)
                        Text(topping[2])
                            .foregroundColor(.pink)
                    }
                }
            }
        }
    }
}

struct ViewPizzasFromJSON_Previews: PreviewProvider {
    static var previews: some View {
        ViewPizzasFromJSON()
    }
}
