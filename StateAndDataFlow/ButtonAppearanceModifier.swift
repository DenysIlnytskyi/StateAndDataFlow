//
//  ButtonAppearanceModifier.swift
//  StateAndDataFlow
//
//  Created by Денис Ільницький on 14/08/2022.
//

import SwiftUI

struct ButtonAppearanceModifier: ViewModifier {
    
    let color: Color
    
    func body(content: Content) -> some View {
        content
            .frame(width: 200, height: 60)
            .background(color)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(Color.black, lineWidth: 4)
            )
    }
}

extension View {
    func buttonApperance(_ color: Color) -> some View {
        ModifiedContent(content: self, modifier: ButtonAppearanceModifier(color: color)
        )
    }
}
