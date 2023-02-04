//
//  PizzaIngredientsModel.swift
//  CWC-Receta-Challenges
//
//  Created by MIGUEL GONZALEZ on 4/2/23.
//

import Foundation

class PizzaIngredientsModel {
    
    // Create an empty list of pizzas
    @Published var pizzas = [Pizza]()
    
    // Init the pizza model with data from JSON
    init() {
        // Get the path to the json file within the app bundle
        let pathString = Bundle.main.path(forResource: "pizza", ofType: "json")
        
    }
}
