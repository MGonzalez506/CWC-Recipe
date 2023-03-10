//
//  RecipeModel.swift
//  CWC-Receta
//
//  Created by MIGUEL GONZALEZ on 21/1/23.
//

import Foundation

class RecipeModel:ObservableObject {
    // Create an empty list of recipes
    @Published var recipes = [Recipe]()
    
    // Init the Recipe Model with some dummy recipes
    init() {
        // Get the path to the json file within the app bundle
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        if let pathString = pathString {
            // The path exists
            // Create a url object
            let url = URL(fileURLWithPath: pathString)
            
            // Error handling
            do {
                // Create a data object with the data at the url
                let data = try Data(contentsOf: url)
                
                // Parse JSON Data
                let decoder = JSONDecoder()
                do {
                    // Decoder throws
                    let recipeArray = try decoder.decode([Recipe].self, from: data)
                    
                    // Set unique IDs for each instance
                    for receta in recipeArray {
                        // Set unique ID for each recipe in the recipeArray
                        receta.id = UUID()
                    }
                    
                    // Assign recipeArray to recipes Published Model
                    self.recipes = recipeArray
                }
                catch {
                    // Print the error
                    print(error)
                }
            }
            catch {
                // Execution will come here if error is thrown
                print(error)
            }
        } else {
            print("File Path not found")
        }
    }
    
    // Function to add recipe
    func addRecipe() {
        /*
        recipes.append(Recipe(name: "Gallo Pinto", cuisine: "Costa Rican"))
        recipes.append(Recipe(name: "Pizza", cuisine: "Italian"))
        recipes.append(Recipe(name: "Chilaquiles", cuisine: "Mexican"))
        recipes.append(Recipe(name: "Sushi", cuisine: "Japanese"))
        recipes.append(Recipe(name: "Burger", cuisine: "American"))
         */
    }
}
