//
//  ContentView.swift
//  CWC-Receta
//
//  Created by MIGUEL GONZALEZ on 14/1/23.
//

import SwiftUI

struct ContentView: View {
    
    //Create observable object of the model to display
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        VStack {
            List(model.recipes) { receta in
                VStack(alignment: .leading) {
                    Text(receta.name)
                        .font(.title)
                    Text(receta.cuisine)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
