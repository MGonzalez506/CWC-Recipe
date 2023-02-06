//
//  RecipeModel.swift
//  CWC-RecipeApp
//
//  Created by MIGUEL GONZALEZ on 5/2/23.
//

import Foundation

class RecipeModel:ObservableObject {
    
    // Create an empty list of recipes
    @Published var recipe = [Recipe]()
    
    init() {
        // Get the path to the json file within the app bundle
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        // Use optional binding to check if path exist
        if let pathString = pathString {
            // The path exists
            // Create a url object
            let url = URL(fileURLWithPath: pathString)
            
        } else {
            // The path does not exists
            print("The path does not exist")
        }
    }
}
