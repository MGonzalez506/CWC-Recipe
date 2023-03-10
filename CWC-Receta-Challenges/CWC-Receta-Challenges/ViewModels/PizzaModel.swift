//
//  PizzaModel.swift
//  CWC-Receta-Challenges
//
//  Created by MIGUEL GONZALEZ on 21/1/23.
//

import Foundation

class PizzaModel:ObservableObject {
    // Create a list of Pizza model
    @Published var pizzasList = [Pizza]()
    
    // Init the list with three instances
    init(){
        // Create first instance of pizza
        let p1 = Pizza()
        p1.name = "Pepperoni"
        p1.topping1 = "Salsa"
        p1.topping2 = "Queso"
        p1.topping3 = "Pepperoni"
        // Append p1 to the list of pizzas
        pizzasList.append(p1)
        
        // Create second instance of pizza
        let p2 = Pizza()
        p2.name = "Jamón y queso"
        p2.topping1 = "Salsa"
        p2.topping2 = "Queso"
        p2.topping3 = "Pepperoni"
        // Append p2 to the list of pizzas
        pizzasList.append(p2)
        
        // Create third instance of pizza
        let p3 = Pizza()
        p3.name = "Suprema"
        p3.topping1 = "Salsa"
        p3.topping2 = "Carne en trozos"
        p3.topping3 = "Cebolla"
        // Append p3 to the list of pizzas
        pizzasList.append(p3)
    }
    
    // Change the topping1 in all of the
    // elements in the array to "Pinappple"
    func addPinapple(){
        // Create a for loop to get to all elements in the array
        for i in 1...pizzasList.count {
            pizzasList[i-1].topping1 = "Pinapple"
        }
    }
}
