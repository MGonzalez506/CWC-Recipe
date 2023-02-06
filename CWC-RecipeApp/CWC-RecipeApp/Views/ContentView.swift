//
//  ContentView.swift
//  CWC-RecipeApp
//
//  Created by MIGUEL GONZALEZ on 5/2/23.
//

import SwiftUI

struct ContentView: View {
    
    // Create observed object of the model to display
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        VStack {
            List(model.recipes) { recipe in
                HStack {
                    // Display Recipe name
                    VStack (alignment: .leading) {
                        Text(recipe.name)
                        Text(recipe.totalTime)
                    }
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
