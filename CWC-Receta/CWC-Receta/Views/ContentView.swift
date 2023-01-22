//
//  ContentView.swift
//  CWC-Receta
//
//  Created by MIGUEL GONZALEZ on 14/1/23.
//

import SwiftUI

struct ContentView: View {
    
    // Create instance of Lista model
    var lista = ListaModel()
    @ObservedObject var recipe = RecipeModel()
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                List(lista.elementos) { elemento in
                    Text(elemento.name)
                }
                List(recipe.recipes) { receta in
                    Text(receta.name + " - " + receta.cuisine)
                }
            }
            Spacer()
            Button("Add Recipe") {
                recipe.addRecipe()
            }.buttonStyle(BasicBtnStyle())
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
