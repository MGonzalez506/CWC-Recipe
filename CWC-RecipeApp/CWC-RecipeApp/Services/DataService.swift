//
//  DataService.swift
//  CWC-RecipeApp
//
//  Created by MIGUEL GONZALEZ on 5/2/23.
//

import Foundation

class DataService {
    
    func getLocalData() {
        // Get the path to the json file within the app bundle
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        // Use optional binding to check if path exist
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
                    for recipe in recipeArray {
                        recipe.id = UUID()
                    }
                    
                    // Assign recipeArray to recipes Published Model
                    self.recipes = recipeArray
                }
                catch {
                    print(error)
                }
            }
            catch {
                // Print error
                print(error)
            }
        } else {
            // The path does not exists
            print("The path does not exist")
        }
    }
}
