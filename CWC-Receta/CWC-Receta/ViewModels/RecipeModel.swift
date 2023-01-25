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
        /*
        recipes.append(Recipe(name: "Gallo Pinto", cuisine: "Costa Rican"))
        recipes.append(Recipe(name: "Pizza", cuisine: "Italian"))
        recipes.append(Recipe(name: "Chilaquiles", cuisine: "Mexican"))
        recipes.append(Recipe(name: "Sushi", cuisine: "Japanese"))
         */
    }
    
    // Function to add recipe
    func addRecipe() {
        //recipes.append(Recipe(name: "Burger", cuisine: "American"))
    }
}
