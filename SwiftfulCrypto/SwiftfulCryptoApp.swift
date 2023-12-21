//
//  SwiftfulCryptoApp.swift
//  SwiftfulCrypto
//
//  Created by shah on 18.12.2023.
//

import SwiftUI

@main
struct SwiftfulCryptoApp: App {
    
    @StateObject private var homeViewModel = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(homeViewModel)
        }
    }
}
