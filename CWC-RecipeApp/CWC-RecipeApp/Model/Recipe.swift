//
//  Recipe.swift
//  CWC-RecipeApp
//
//  Created by MIGUEL GONZALEZ on 5/2/23.
//

import Foundation

class Recipe: Identifiable, Decodable {
    
    // Add Recipe properties
    var id:UUID?
    var name:String
    var featured:Bool
    var image:String
    var description:String
    var prepTime:String
    var cookTime:String
    var totalTime:String
    var servings:Int
    var ingredients:[String]
    var directions:[String]
    
}
