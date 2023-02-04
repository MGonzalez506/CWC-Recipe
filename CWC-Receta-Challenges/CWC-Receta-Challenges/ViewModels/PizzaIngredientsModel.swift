//
//  PizzaIngredientsModel.swift
//  CWC-Receta-Challenges
//
//  Created by MIGUEL GONZALEZ on 4/2/23.
//

import Foundation

class PizzaIngredientsModel:ObservableObject {
    
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
            
            // Error handling to read content from file
            do {
                // Get the data fromt he url file
                let data = try Data(contentsOf: url)
                
                // Parse JSON Data
                let decoder = JSONDecoder()
                
                // Handle error if decoder throws
                do {
                    // Decode the data and transform into Pizza Array
                    let pizzaArray = try decoder.decode([Pizza].self, from: data)
                    
                    // Set unique ID to pizzas in the data Array
                    for pizza in pizzaArray {
                        pizza.id = UUID()
                    }
                    
                    // Assign the data Array to the property pizzas
                    // In order to update the screen
                    self.pizzas = pizzaArray
                } catch {
                    // Print error in case of thrown
                    print(error)
                }
            } catch {
                // Print error
                print(error)
            }
        } else {
            print("The path have not been found. Check the JSON File path")
        }
    }
}
