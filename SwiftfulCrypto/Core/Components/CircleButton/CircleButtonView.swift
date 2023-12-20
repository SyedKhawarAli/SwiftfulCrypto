//
//  CircleButtonView.swift
//  SwiftfulCrypto
//
//  Created by shah on 20.12.2023.
//

import SwiftUI

struct CircleButtonView: View {
    let iconName: String
    
    var body: some View {
        Image(systemName: iconName)
            .font(.headline)
            .foregroundColor(.theme.accent)
            .frame(width: 50, height: 50)
            .background(
            Circle()
                .foregroundColor(.theme.background)
            )
            .shadow(
                color: .theme.accent.opacity(0.25),
                radius: 10,
                x: 0,
                y: 0
            )
            .padding()
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CircleButtonView(iconName: "info")
        .preferredColorScheme(.light)
    
}

#Preview(traits: .sizeThatFitsLayout) {    
    CircleButtonView(iconName: "plus")
        .preferredColorScheme(.dark)
}
