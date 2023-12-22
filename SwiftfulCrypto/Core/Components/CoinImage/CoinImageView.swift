//
//  CoinImageView.swift
//  SwiftfulCrypto
//
//  Created by shah on 22.12.2023.
//

import SwiftUI

struct CoinImageView: View {
    @StateObject var viewModel: CoinImageViewModel
    
    init(coin: CoinModel){
       _viewModel = StateObject(wrappedValue: CoinImageViewModel(coin: coin))
    }
    
    var body: some View {
        ZStack {
            if let image = viewModel.image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            } else if viewModel.isLoading {
                ProgressView()
            } else {
                Image(systemName: "questionmark")
                    .foregroundStyle(Color.theme.secondaryText)
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CoinImageView(coin: DeveloperPreview.instance.coin)
        .preferredColorScheme(.light)
}

#Preview(traits: .sizeThatFitsLayout) {
    CoinImageView(coin: DeveloperPreview.instance.coin)
        .preferredColorScheme(.dark)
}
