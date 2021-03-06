//
//  MarketDataModel.swift
//  StonksPump
//
//  Created by Alex on 23.08.2021.
//

import Foundation

//JSON data
/*
 
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 
 {
   "data": {
     "active_cryptocurrencies": 9035,
     "upcoming_icos": 0,
     "ongoing_icos": 50,
     "ended_icos": 3375,
     "markets": 636,
     "total_market_cap": {
       "btc": 44773824.53436393,
       "eth": 667219853.6641324,
       "ltc": 11911897291.228945,
       "bch": 3298773190.6277494,
       "bnb": 4410538172.4210005,
       "eos": 400758390640.0621,
       "xrp": 1792465534254.4778,
       "xlm": 5910402421925.069,
       "link": 77615176953.45772,
       "dot": 80099292392.4736,
       "yfi": 55409572.85467784,
       "usd": 2201451973527.301,
       "aed": 8086373389160.494,
       "ars": 214454003710767.28,
       "aud": 3051155197557.528,
       "bdt": 187422588468667.22,
       "bhd": 830022243386.8914,
       "bmd": 2201451973527.301,
       "brl": 11850636118694.818,
       "cad": 2785607254702.771,
       "chf": 2008628996618.0178,
       "clp": 1727171160350579.5,
       "cny": 14268710966417.2,
       "czk": 47902714363164.77,
       "dkk": 13937832734796.055,
       "eur": 1874239159442.071,
       "gbp": 1603504595737.6829,
       "hkd": 17154704431112.842,
       "huf": 655704671767078.5,
       "idr": 31691882465701700,
       "ils": 7107387696532.884,
       "inr": 163186480078665,
       "jpy": 241437273924685.97,
       "krw": 2573538348089165.5,
       "kwd": 662425704642.2587,
       "lkr": 439796287615810.2,
       "mmk": 3624052517514617.5,
       "mxn": 44709219885354.81,
       "myr": 9303336040126.379,
       "ngn": 906007559705161,
       "nok": 19626545340384.656,
       "nzd": 3192354125687.599,
       "php": 110429619150171.9,
       "pkr": 361588486651859.6,
       "pln": 8588517979966.148,
       "rub": 163225335705997.6,
       "sar": 8256171379878.66,
       "sek": 19182670981866.312,
       "sgd": 2985477079379.317,
       "thb": 73214789009584.38,
       "try": 18565504928347.797,
       "twd": 61531683386074.88,
       "uah": 58753382750472.195,
       "vef": 220431386109.28864,
       "vnd": 50175287527263030,
       "zar": 33302565996325.04,
       "xdr": 1554535498038.5413,
       "xag": 93226625870.01978,
       "xau": 1220176770.8472447,
       "bits": 44773824534363.93,
       "sats": 4477382453436393.5
     },
     "total_volume": {
       "btc": 2787044.0222110744,
       "eth": 41532549.96628546,
       "ltc": 741481936.9123064,
       "bch": 205339306.9987344,
       "bnb": 274543534.6660036,
       "eos": 24946077057.300976,
       "xrp": 111575913029.92522,
       "xlm": 367905844769.7589,
       "link": 4831325382.868862,
       "dot": 4985954547.493336,
       "yfi": 3449089.2927713743,
       "usd": 137034162857.69833,
       "aed": 503353887008.89825,
       "ars": 13349155567950.11,
       "aud": 189925786832.5356,
       "bdt": 11666526374534.242,
       "bhd": 51666538558.889366,
       "bmd": 137034162857.69833,
       "brl": 737668602079.2762,
       "cad": 173396177971.98862,
       "chf": 125031477567.15538,
       "clp": 107511522811635.83,
       "cny": 888186926562.1716,
       "czk": 2981808570118.3794,
       "dkk": 867590691884.6602,
       "eur": 116666090061.34438,
       "gbp": 99813628713.10458,
       "hkd": 1067831862360.4729,
       "huf": 40815762441328.21,
       "idr": 1972730105083141.2,
       "ils": 442414794786.0786,
       "inr": 10157897131611.898,
       "jpy": 15028787869445.582,
       "krw": 160195487956761.97,
       "kwd": 41234127740.53284,
       "lkr": 27376075801822.93,
       "mmk": 225587025682071.28,
       "mxn": 2783022565417.949,
       "myr": 579106372236.6335,
       "ngn": 56396409724085.766,
       "nok": 1221696972202.8406,
       "nzd": 198715021004.06577,
       "php": 6873931658246.368,
       "pkr": 22507861249376.977,
       "pln": 534610968454.25055,
       "rub": 10160315784586.326,
       "sar": 513923331990.1129,
       "sek": 1194067048014.1697,
       "sgd": 185837509617.8392,
       "thb": 4557413671239.913,
       "try": 1155650205627.828,
       "twd": 3830173368954.101,
       "uah": 3657232007368.634,
       "vef": 13721230726.941334,
       "vnd": 3123269826062155.5,
       "zar": 2072990602201.3237,
       "xdr": 96765440794.49792,
       "xag": 5803093951.523614,
       "xau": 75952555.10550806,
       "bits": 2787044022211.074,
       "sats": 278704402221107.44
     },
     "market_cap_percentage": {
       "btc": 41.97837731189253,
       "eth": 17.625172115049544,
       "ada": 4.207861375541353,
       "bnb": 3.5058893297160107,
       "usdt": 2.93944489587759,
       "xrp": 2.596540196006145,
       "doge": 1.8750875818351584,
       "dot": 1.2777687236529742,
       "usdc": 1.2232433382845425,
       "sol": 0.9462292096071316
     },
     "market_cap_change_percentage_24h_usd": 2.8772006939231565,
     "updated_at": 1629749435
   }
 }
 
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

// MARK: - DataClass
struct MarketDataModel: Codable {

    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]?
    let marketCapChangePercentage24HUsd: Double

    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap?.first(where: { $0.key == "usd" }){
            return "$"+item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume?.first(where: { $0.key == "usd" }){
            return "$"+item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage?.first(where: { $0.key == "btc" }){
            return "\(item.value.asPercentString())"
        }
        return ""
    }
}
