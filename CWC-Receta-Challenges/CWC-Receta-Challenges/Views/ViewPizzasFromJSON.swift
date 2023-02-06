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
        ScrollView {
            ForEach(modelo.pizzas) { pizza in
                HStack {
                    Image(pizza.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 70, height: 50, alignment: .center)
                        .clipped()
                        .cornerRadius(5)
                    VStack (alignment: .leading) {
                        Text(pizza.name)
                            .font(.title)
                            .foregroundColor(.pink)
                            .fontWeight(.bold)
                        if let topping = pizza.toppings {
                            HStack {
                                ForEach (topping, id: \.self) { topp in
                                    Text(topp)
                                }
                                .font(.subheadline)
                                .foregroundColor(.pink)
                            }
                        }
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
