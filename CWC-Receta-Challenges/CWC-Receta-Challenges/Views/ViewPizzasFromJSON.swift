//
//  ViewPizzasFromJSON.swift
//  CWC-Receta-Challenges
//
//  Created by MIGUEL GONZALEZ on 4/2/23.
//

import SwiftUI

struct ViewPizzasFromJSON: View {
    
    // Create an Observed object to list all the pizzas
    @ObservedObject var modelo = PizzaIngredientsModel()
    
    var body: some View {
        ScrollView {
            ForEach(modelo.pizzas) { pizza in
                
            }
        }
    }
}

struct ViewPizzasFromJSON_Previews: PreviewProvider {
    static var previews: some View {
        ViewPizzasFromJSON()
    }
}
