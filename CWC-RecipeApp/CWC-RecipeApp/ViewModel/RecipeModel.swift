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
        // Create instance of DataService
        // And call the function to get the data from the json file
        let service = DataService()
        recipes = service.getLocalData()
    }
}
