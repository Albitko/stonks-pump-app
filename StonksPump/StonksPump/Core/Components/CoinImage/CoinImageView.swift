//
//  CoinImageView.swift
//  StonksPump
//
//  Created by Alex on 21.08.2021.
//

import SwiftUI



struct CoinImageView: View {
    
    @StateObject var vm: CoinImageVievModel
    
    init(coin: CoinModel){
        _vm = StateObject(wrappedValue: CoinImageVievModel(coin: coin))
    }
    
    var body: some View {
        ZStack {
            if let image = vm.image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            } else if vm.isLoading {
                ProgressView()
            }else {
                Image(systemName: "questionmark")
                    .foregroundColor(Color.theme.secondaryText)
            }
        }
    }
}

struct CoinImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoinImageView(coin: dev.coin)
            .padding()
    }
}
