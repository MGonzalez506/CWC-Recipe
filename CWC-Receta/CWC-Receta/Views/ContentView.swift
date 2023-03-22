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
    let exampleArray = ["N1","N2","N3","N4","N5"]
    var body: some View {
        VStack {
            List(model.recipes) { receta in
                VStack(alignment: .leading) {
                    Text(receta.name)
                        .font(.title)
                        .foregroundColor(.pink)
                        .fontWeight(.bold)
                    Text(receta.cuisine)
                        .font(.headline)
                        .foregroundColor(.pink)
                    HStack {
                        ForEach (exampleArray, id: \.self) { r in
                            Text(r)
                                .foregroundColor(.orange)
                        }
                    }
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
