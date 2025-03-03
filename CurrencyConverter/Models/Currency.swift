//
//  Currency.swift
//  CurrencyConverter
//
//  Created by Nicholas Hwang on 3/3/2025.
//

import Foundation

struct Currency: Identifiable {
    //MARK: Stored Properties
    let id = UUID()
    var cad: Double
    //MARK: Computed Properties
    var usd: Double {
        return cad*1.4438
    }
    var ukPound: Double {
        return cad*1.8177
    }
    var euro: Double {
        return cad*1.5007
    }
}
