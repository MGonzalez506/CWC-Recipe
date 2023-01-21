//
//  RecipeModel.swift
//  CWC-Receta
//
//  Created by MIGUEL GONZALEZ on 21/1/23.
//

import Foundation

class RecipeModel {
    // Create an empty list of recipes
    var recipes = [Recipe]()
    
    // Init the Recipe Model with some dummy recipes
    init() {
        recipes.append(Recipe(name: "Gallo Pinto", cuisine: "Costa Rican"))
        recipes.append(Recipe(name: "Pizza", cuisine: "Italian"))
        recipes.append(Recipe(name: "Chilaquiles", cuisine: "Mexican"))
        recipes.append(Recipe(name: "Sushi", cuisine: "Japanese"))
    }
}
