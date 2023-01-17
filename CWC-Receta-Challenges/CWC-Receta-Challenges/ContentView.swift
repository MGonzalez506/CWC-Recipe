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

class Poet: Person {
    override func introduceMySelf() {
        print("Hi, my name is \(name)")
        print("I'm a poet")
    }
}

class Astronaut: Person {
    override func introduceMySelf() {
        print("Hi, my name is \(name)")
        print("I'm an astronaut")
    }
}

struct ContentView: View {
    // Declare string that contains 4 names
    let names = ["Miguel", "Silvia", "Carmen", "Karely"]
    // Create a list to hold the person created
    @State var people:[Person] = []
    
    var body: some View {
        NavigationView {
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
