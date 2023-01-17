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
            Button("Start the loop") {
                loop10Times()
            }
        }
    }
    
    // Function loop 10 times
    func loop10Times(){
        // Loop 10 times
        for _ in 1...10 {
            // Get a random number from 1 to 3
            let personNumber = Int.random(in: 1...3)
            
        }
            //.navigationBarTitle("People classes")
    }
    
    // Function select one of the three available subclasses
    func selectTypeOfPerson(personNumber:Int) -> Person{
        switch personNumber {
        case 1:
            // return instance of Chef
            return Chef()
        case 2:
            // return instance of Poet
            return Poet()
        case 3:
            return Astronaut()
        default:
            // Default return Chef()
            return Chef()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
