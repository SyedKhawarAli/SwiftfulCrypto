//
//  ContentView.swift
//  SwiftfulCrypto
//
//  Created by shah on 18.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            VStack (spacing: 16){
                Text("Testing color")
                    .foregroundColor(.theme.accent)
                Text("Testing color")
                    .foregroundColor(.theme.secondaryText)
                Text("Testing color")
                    .foregroundColor(.theme.red)
                Text("Testing color")
                    .foregroundColor(.theme.green)
            }
        }
    }
}

#Preview {
    ContentView()
}
