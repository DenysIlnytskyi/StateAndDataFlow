//
//  ButtonView.swift
//  StateAndDataFlow
//
//  Created by Денис Ільницький on 14/08/2022.
//

import SwiftUI

struct ButtonView: View {
    
    let title: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .buttonApperance(color)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "Some action", color: .red, action: {})
    }
}
