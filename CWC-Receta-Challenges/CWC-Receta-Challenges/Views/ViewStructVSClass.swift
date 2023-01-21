//
//  ViewStructVSClass.swift
//  CWC-Receta-Challenges
//
//  Created by MIGUEL GONZALEZ on 21/1/23.
//

import SwiftUI

// Struct TalkShowHost
struct TalkShowHost {
    var name = ""
}

// Class TalkShowHosts
class TalkShowHosts {
    var name = ""
}

struct ViewStructVSClass: View {
    // Declare string that contains 4 names
    let names = ["Miguel", "Silvia", "Carmen", "Karely", "Justin", "Mariel", "Virginia", "Fernando", "Julián", "Armando", "Juan Carlos", "Daniel", "Leo", "Ronaldo", "Ferrán", "José", "Marcel", "Christian", "Julieta", "Camilo", "Eva", "Samuel", "Francella", "Gerardo", "Antonella", "Gabriel", "And", "Cristina", "Leonor", "María", "Alberto", "Roberto", "Javier", "Camila", "Fabiana", "Andrés", "Andrea", "Scott", "Tom", "Victoria", "Elia", "Valeria", "Julio", "Sergio", "Karol", "Carolina", "Carol"]
    @State var nameStruct_1 = ""
    @State var nameStruct_2 = ""
    @State var nameClass_1 = ""
    @State var nameClass_2 = ""
    var body: some View {
        VStack {
            Spacer()
            VStack {
                Text("Structs")
                    .font(.largeTitle)
                    .foregroundColor(Color.pink)
                Text(nameStruct_1 + " | " + nameStruct_2)
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(Color.pink)
                Button("New Struct Name") {
                    createNewTalkShowHost()
                }
                .buttonStyle(BasicBtnStyle())
            }
            Spacer()
            VStack {
                Text("Classes")
                    .font(.largeTitle)
                    .foregroundColor(Color.pink)
                Text(nameClass_1 + " | " + nameClass_2)
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(Color.pink)
                Button("New Class Name") {
                    createNewTalkShowHosts()
                }
                .buttonStyle(BasicBtnStyle())
            }
            Spacer()
        }
    }
    
    func createNewTalkShowHost() {
        // Create an instance of TalkShowHost struct
        var host = TalkShowHost()
        // Assign a random name from the array
        host.name = getRandomName()
        // Create a copy of host
        var b = host
        // Assign a random name from the array
        b.name = getRandomName()
        // Assign the generated name to the State property
        nameStruct_1 = host.name
        // Assign the generated name to the State property
        nameStruct_2 = b.name
    }
    
    func createNewTalkShowHosts() {
        // Create instance of TalkShowHosts
        let host = TalkShowHosts()
        // Assign a random name from the array
        host.name = getRandomName()
        // Create an instance from the one already created
        let b = host
        b.name = getRandomName()
        // Assign the host.name class property to
        // the State property of nameClass_1
        nameClass_1 = host.name
        // Assign the b.name class property to
        // the State property of nameClass_2
        nameClass_2 = b.name
    }
    
    // Function get random name from list of
    // available names
    func getRandomName() -> String {
        // Generate random name from 1 to the amount of
        // elements in the name array
        let randNameNum = Int.random(in: 1...names.count)
        return names[randNameNum-1]
    }
}

struct ViewStructVSClass_Previews: PreviewProvider {
    static var previews: some View {
        ViewStructVSClass()
    }
}