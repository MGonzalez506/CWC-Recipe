//
//  ViewListOfNames.swift
//  CWC-Receta-Challenges
//
//  Created by MIGUEL GONZALEZ on 4/2/23.
//

import SwiftUI

struct ViewListOfNames: View {
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
            Spacer()
            if let names = names {
                List(names, id:\.self) { name in
                    Text(name)
                }
            }
            Spacer()
            HStack {
                Spacer()
                Button("Set array to nil") {
                    setArrayToNil()
                }
                .buttonStyle(BasicBtnStyle())
                Spacer()
                Button("Set names") {
                    setNames()
                }
                .buttonStyle(BasicBtnStyle())
                Spacer()
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
    
    func setNames() {
        // Display title that new names have been assigned
        title = "New Names Assigned"
        
        // Create array to hold people names
        names = [String]()
        names?.append(newNameModel().getRandomName())
        names?.append(newNameModel().getRandomName())
        names?.append(newNameModel().getRandomName())
    }
}

struct ViewListOfNames_Previews: PreviewProvider {
    static var previews: some View {
        ViewListOfNames()
    }
}
