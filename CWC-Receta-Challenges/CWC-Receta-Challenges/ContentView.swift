//
//  ContentView.swift
//  CWC-Receta-Challenges
//
//  Created by MIGUEL GONZALEZ on 14/1/23.
//

import SwiftUI

class Person {
    var name = ""
    
    func introduceMySelf(){
        print("Hi, my name is \(name)")
    }
}

class Chef: Person {
    override func introduceMySelf() {
        print("Hi, my name is \(name)")
        print("I'm a chef")
    }
}

struct ContentView: View {
    // Declare string that contains 4 names
    let names = ["Miguel", "Silvia", "Carmen", "Karely"]
    var body: some View {
        Text("Hello")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
