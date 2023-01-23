//
//  ContentView.swift
//  CWC-Receta-Challenges
//
//  Created by MIGUEL GONZALEZ on 14/1/23.
//

import SwiftUI

struct ContentView: View {
    // Declare an @State property for an array of Strings
    @State var names:[String]?
    // Declare a Text element to show the status of array
    @State var title = "MGonzalez506"
    
    var body: some View {
        // Add two buttons in HStack container
        
        VStack {
            Text(title)
                .font(.largeTitle)
                .foregroundColor(.pink)
            HStack {
                Button("Set array to nil") {
                    setArrayToNil()
                }
                .buttonStyle(BasicBtnStyle())
                Button("Set names") {
                    
                }
                .buttonStyle(BasicBtnStyle())
            }
        }
    }
    
    func setArrayToNil() {
        if names != nil {
            // names array is nil
            names = nil
            title = "Assigned nill to array"
        } else {
            title = "Array already nil"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
