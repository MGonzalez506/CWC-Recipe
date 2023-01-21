//
//  ViewTypeOfPerson.swift
//  CWC-Receta-Challenges
//
//  Created by MIGUEL GONZALEZ on 21/1/23.
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
        print("I'm a chef\n")
    }
}

class Poet: Person {
    override func introduceMySelf() {
        print("Hi, my name is \(name)")
        print("I'm a poet\n")
    }
}

class Astronaut: Person {
    override func introduceMySelf() {
        print("Hi, my name is \(name)")
        print("I'm an astronaut\n")
    }
}

struct ViewTypeOfPerson: View {
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
            // Get the corresponding PersonType
            let personType = getRandomTypeOfPerson()
            // Get random Name from array
            let personName = getRandomName()
            // Assign that name to the Person Class
            personType.name = personName
            // Call introduceMySelf Method
            personType.introduceMySelf()
            
        }
            //.navigationBarTitle("People classes")
    }
    
    // Function select one of the three
    // available subclasses
    func getRandomTypeOfPerson() -> Person{
        // Get a random number from 1 to 3
        let personNum = Int.random(in: 1...3)
        
        switch personNum {
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
    
    // Function get random name from list of
    // available names
    func getRandomName() -> String {
        // Generate random name from 1 to 4
        let randNameNum = Int.random(in: 1...4)
        return names[randNameNum-1]
    }
}

struct ViewTypeOfPerson_Previews: PreviewProvider {
    static var previews: some View {
        ViewTypeOfPerson()
    }
}
