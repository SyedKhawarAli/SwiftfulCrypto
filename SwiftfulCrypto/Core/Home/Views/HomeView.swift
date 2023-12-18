//
//  HomeView.swift
//  SwiftfulCrypto
//
//  Created by shah on 18.12.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            // background layer
            Color.theme.background
                .ignoresSafeArea()
            
        // content
            VStack {
                Text("Header")
                Spacer(minLength: 0)
                
            }
        }
    }
}

#Preview {
    NavigationView {
        HomeView()
            .navigationBarHidden(true)
    }
}
