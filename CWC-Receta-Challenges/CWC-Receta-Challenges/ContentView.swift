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
    
    var body: some View {
        VStack {
            Button("Generate Struct Host Name") {
                createNewTalkShowHost()
            }
        }
    }
    
    func createNewTalkShowHost() {
        var host = TalkShowHost()
        host.name = getRandomName()
        // Create a copy of host
        var b = host
        
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
