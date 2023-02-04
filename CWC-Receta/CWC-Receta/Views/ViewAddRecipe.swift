//
//  ViewAddRecipe.swift
//  CWC-Receta
//
//  Created by MIGUEL GONZALEZ on 3/2/23.
//

import SwiftUI

struct ViewAddRecipe: View {
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

struct ViewAddRecipe_Previews: PreviewProvider {
    static var previews: some View {
        ViewAddRecipe()
    }
}
