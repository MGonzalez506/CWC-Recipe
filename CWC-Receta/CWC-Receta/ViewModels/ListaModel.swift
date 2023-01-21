//
//  ListaModel.swift
//  CWC-Receta
//
//  Created by MIGUEL GONZALEZ on 21/1/23.
//

import Foundation

class ListaModel {
    // Create array that contains Lista elements
    var elementos = [Elementos]()
    
    // Add a couple of elments in Lista from
    // the init() Method
    init(){
        // Create some dummy elements to add
        var elemento = Elementos()
        elemento.name = "Elemento 001"
        elementos.append(elemento)
        
        // Create an instance of struct and
        // assign value of 002
        elementos.append(Elementos(name: "Elemento 002"))
    }
}
