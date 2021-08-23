//
//  PreviewProvider.swift
//  StonksPump
//
//  Created by Alex on 19.08.2021.
//

import Foundation
import SwiftUI

extension PreviewProvider {
    
    static var dev: DeveloperPreview{
        return DeveloperPreview.instance
    }
    
}

class DeveloperPreview {
    
    static let instance = DeveloperPreview()
    private init() {}
    
    let homeVM = HomeViewModel()
    
    let stat1 = StatisticModel(title: "Market Cap", value: "$12.5Bn", percentageChange: 22.44)
    let stat2 = StatisticModel(title: "Total Volume", value: "$1.23Tr")
    let stat3 = StatisticModel(title: "Portfolio Value", value: "$50.5k", percentageChange: -5.3)
    
    let coin = CoinModel(
        id: "bitcoin",
        symbol: "btc",
        name: "Bitcoin",
        image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
        currentPrice: 61408,
        marketCap: 111111111111,
        marketCapRank: 1,
        fullyDilutedValuation: 11111222222,
        totalVolume: 232323232323232,
        high24H: 61500,
        low24H: 15023,
        priceChange24H: 3954.34,
        priceChangePercentage24H: 6.8723,
        marketCapChange24H: 234528424,
        marketCapChangePercentage24H: 6.8723,
        circulatingSupply: 34523544345,
        totalSupply: 5675786578,
        maxSupply: 25365484,
        ath: 639485,
        athChangePercentage: -0.93753,
        athDate: "2021-03-13T20:49:26.5452",
        atl: 74.43,
        atlChangePercentage: 90345.345,
        atlDate: "2021-03-13T20:49:26.5452",
        lastUpdated: "2021-03-13T20:49:26.5452",
        sparklineIn7D: SparklineIn7D(price: [83654.25354345,73648345.34534534]), priceChangePercentage24HInCurrency: 38655.3, currentHoldings: 1.5)
}
