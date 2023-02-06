//
//  RecipeModel.swift
//  CWC-RecipeApp
//
//  Created by MIGUEL GONZALEZ on 5/2/23.
//

import Foundation

class RecipeModel:ObservableObject {
    
    // Create an empty list of recipes
    @Published var recipes = [Recipe]()
    
    init() {
        
    }
}
