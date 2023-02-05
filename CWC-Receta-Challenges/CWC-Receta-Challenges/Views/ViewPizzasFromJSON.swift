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
                    HStack{
                        Image(pizza.name)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 80, alignment: .center)
                            .clipped()
                            .cornerRadius(5)
                        VStack (alignment: .leading){
                            Text(pizza.name)
                                .font(.title)
                                .foregroundColor(.pink)
                                .fontWeight(.bold)
                            if let topping = pizza.toppings {
                                HStack {
                                    Text(topping[0])
                                    Text(topping[1])
                                    Text(topping[2])
                                }
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
