//
//  AddCommand.swift
//  nRF-UART
//
//  Created by Nick Kibysh on 16/11/2021.
//

import SwiftUI

struct AddCommand: View {
    private let cornerRadius: CGFloat = 4
    private let alpha: CGFloat = 0.2
    private let color: Color = ColorManager.primaryColor
    private let lineWidth: CGFloat = 2
    
    var body: some View {
        ZStack {
            color.opacity(alpha)
                .cornerRadius(cornerRadius)
                .overlay(
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .stroke(color, lineWidth: lineWidth)
                )
            Image(systemName: "plus")
                .foregroundColor(color)
        }
    }
}

struct AddCommand_Previews: PreviewProvider {
    static var previews: some View {
        AddCommand()
            .previewLayout(PreviewLayout.fixed(width: 80, height: 100))
            .padding()
            .previewDisplayName("Default preview 1")
    }
}
