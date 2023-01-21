//
//  BasicBtnStyle.swift
//  CWC-Receta
//
//  Created by MIGUEL GONZALEZ on 21/1/23.
//

import SwiftUI

struct BasicBtnStyle: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            //.frame(width: 100.0, height: 50.0)
            .padding(10)
            .foregroundColor(.white)
            .background(
                RoundedRectangle(cornerRadius: 10)
                .stroke(Color.pink, lineWidth: 1.5)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.pink)
                )
            )
    }
}
