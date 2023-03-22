//
//  RecipeDetailView.swift
//  CWC-RecipeApp
//
//  Created by MIGUEL GONZALEZ on 21/3/23.
//

import SwiftUI

struct RecipeDetailView: View {
    
    // Add the variable that will hold all information
    // about a recipe
    var recipe:Recipe
    
    var body: some View {
        ScrollView {
            // MARK: Recipe Image
            
            // MARK: Ingredients
            
            // MARK: Directions
        }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        // Create a dummy recipe and pass it into the detail
        // view so that we can see a temporarily preview
        let model = RecipeModel()
        
        RecipeDetailView(recipe: model.recipes[0])
    }
}
