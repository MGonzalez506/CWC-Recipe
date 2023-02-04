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
        
        // Use optional binding to check if PathString exists
        if let pathString = pathString {
            // The path exists
            // Create a url object
            let url = URL(fileURLWithPath: pathString)
            
        } else {
            print("The path have not been found. Check the JSON File path")
        }
    }
}
