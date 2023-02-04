//
//  PizzaInfo.swift
//  CWC-Receta-Challenges
//
//  Created by MIGUEL GONZALEZ on 4/2/23.
//

import Foundation

class PizzaInfo:Identifiable,Decodable {
    var id:UUID?
    var name = ""
    var toppings:[String]?
}
