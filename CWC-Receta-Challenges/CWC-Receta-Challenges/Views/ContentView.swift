//
//  ContentView.swift
//  CWC-Receta-Challenges
//
//  Created by MIGUEL GONZALEZ on 14/1/23.
//

import SwiftUI

struct BasicBtnStyle: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            //.frame(width: 100.0, height: 50.0)
            .padding(10)
            .foregroundColor(.white)
            .background(
                RoundedRectangle(cornerRadius: 10)
                .stroke(Color.pink, lineWidth: 1.5)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.pink)
                )
            )
    }
}

struct ContentView: View {
    // Create instance of PizzaModel
    let pizzas = PizzaModel()
    
    var body: some View {
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
