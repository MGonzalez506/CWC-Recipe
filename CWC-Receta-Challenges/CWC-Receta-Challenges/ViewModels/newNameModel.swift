//
//  newNameModel.swift
//  CWC-Receta-Challenges
//
//  Created by MIGUEL GONZALEZ on 23/1/23.
//

import Foundation

struct newNameModel {
    let names = NamesClass().names
    
    // Function get random name from list of
    // available names
    func getRandomName() -> String {
        // Generate random name from 1 to the amount of
        // elements in the name array
        let randNameNum = Int.random(in: 1...names.count)
        return names[randNameNum-1]
    }
}
