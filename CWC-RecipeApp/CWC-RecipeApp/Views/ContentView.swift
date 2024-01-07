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
        NavigationView {
            List(model.recipes) { recipe in
                HStack(spacing: 10.0) {
                    // Add image
                    Image(recipe.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 70, alignment: .center)
                        .clipped()
                        .cornerRadius(5)
                    // Display Recipe name
                    VStack (alignment: .leading) {
                        Text(recipe.name)
                            .font(.title)
                            .foregroundColor(.pink)
                            .fontWeight(.bold)
                        Text(recipe.totalTime)
                            .font(.body)
                            .foregroundColor(.pink)
                    }
                }
            }
            .navigationBarTitle("Recetas")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
