//
//  PortfolioView.swift
//  StonksPump
//
//  Created by Alex on 28.08.2021.
//

import SwiftUI

struct PortfolioView: View {
    
    @EnvironmentObject private var vm: HomeViewModel
        
    var body: some View {
        NavigationView{
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    SearchBarView(searchText: $vm.searchText)
                    
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHStack(spacing: 10){
                            ForEach(vm.allCoins) { coin in
                                CoinLogoView(coin: coin)
                                    .frame(width: 75)
                            }
                        }
                    })
                }
            }
            .navigationTitle("Edit portfolio")
            .toolbar(content: {
                
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton()
                }
                
            })
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
            .environmentObject(dev.homeVM)
    }
}
