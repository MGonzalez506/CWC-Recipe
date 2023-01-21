//
//  ContentView.swift
//  CWC-Receta-Challenges
//
//  Created by MIGUEL GONZALEZ on 14/1/23.
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

struct ContentView: View {
    // Declare string that contains 4 names
    let names = ["Miguel", "Silvia", "Carmen", "Karely"]
    @State var nameStruct_1 = ""
    @State var nameStruct_2 = ""
    var body: some View {
        VStack {
            Text("Structs")
            Text(nameStruct_1)
            Text(nameStruct_2)
            Button("New Struct Name") {
                createNewTalkShowHost()
            }
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
    }
    
    // Function get random name from list of
    // available names
    func getRandomName() -> String {
        // Generate random name from 1 to 4
        let randNameNum = Int.random(in: 1...4)
        return names[randNameNum-1]
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
