//
//  RecipeTabView.swift
//  CWC-RecipeApp
//
//  Created by Miguel González on 2024-01-07.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        
        TabView {
            
            Text("Featured View")
                .tabItem {
                    VStack {
                        Image (systemName: "star.fill")
                        Text ("Featured")
                    }
                }
            
            ContentView()
                .tabItem {
                    VStack {
                        Image (systemName: "list.bullet")
                        Text ("List")
                    }
                }
        }
    }
}

#Preview {
    RecipeTabView()
}
