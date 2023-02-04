//
//  Pizza.swift
//  CWC-Receta-Challenges
//
//  Created by MIGUEL GONZALEZ on 21/1/23.
//

import Foundation

struct Pizza:Identifiable,Decodable {
    var id = UUID()
    var name = ""
    var topping1 = ""
    var topping2 = ""
    var topping3 = ""
}
