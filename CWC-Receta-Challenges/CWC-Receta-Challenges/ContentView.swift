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
    var body: some View {
        VStack {
            Button("Generate Struct Host Name") {
                createNewTalkShowHost()
            }
        }
    }
    
    func createNewTalkShowHost() {
        var host = TalkShowHost()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
