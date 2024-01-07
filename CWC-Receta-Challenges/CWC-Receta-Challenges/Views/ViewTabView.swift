//
//  ViewTabView.swift
//  CWC-Receta-Challenges
//
//  Created by Miguel González on 2024-01-07.
//

import SwiftUI

struct ViewTabView: View {
    
    @State var tabIndex = "Frases"
    
    var body: some View {
        
        TabView (selection: $tabIndex){
            
            ViewPhrases()
                .tabItem {
                    VStack {
                        Image(systemName: "text.quote")
                        Text("Frases")
                    }
                }
                .tag("Frases")
            
            ViewAddDigits()
                .tabItem {
                    VStack {
                        Image(systemName: "numbersign")
                        Text("Digitos")
                    }
                }
                .tag("Agregar Dígitos")
            
            ViewTypeOfPerson()
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                        Text("Categorías")
                    }
                }
                .tag("Tipos de Personas")
            
            
        }
    }
}

#Preview {
    ViewTabView()
}
