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
            VStack (alignment: .leading){
                // MARK: Recipe Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                
                // MARK: Ingredients
                VStack (alignment: .leading){
                    Text("Ingredients")
                        .font(.headline)
                        .padding([.vertical, .leading], 5)
                    
                    ForEach(recipe.ingredients, id: \.self) { item in
                        Text("• " + item)
                    }
                }
                
                // MARK: Directions
                VStack(alignment: .leading){
                    Text("Directions")
                        .font(.headline)
                        .padding(.vertical, 5)
                    
                    ForEach(0..<recipe.directions.count, id:\.self) { index in
                        Text(String(index+1) + " - " + recipe.directions[index])
                    }
                }
            }
            .padding(.horizontal, 5)
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
