//
//  Recipe.swift
//  CWC-Receta
//
//  Created by MIGUEL GONZALEZ on 21/1/23.
//

import Foundation

class Recipe:Identifiable, Decodable {
    var id:UUID?
    var name = ""
    var cuisine = ""
}
