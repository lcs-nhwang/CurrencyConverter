//
//  CurrencyViewModel.swift
//  CurrencyConverter
//
//  Created by Nicholas Hwang on 3/3/2025.
//

import Foundation

@Observable
class CurrencyViewModel {
    //MARK: Stored Properties
    var resultHistory: [Currency] = []
    var providedCad: String
    var recoverySuggestion: String = ""
    //MARK: Computed Properties
    var currency: Currency? {
        guard let cad = Double(providedCad), cad > 0 else {
            recoverySuggestion = "Please provide a correct value of currency."
            return nil
        }
        recoverySuggestion = ""
        return Currency(cad: cad)
    }
    //MARK: Initializers
    init(
        providedCad: String = "",
        recoverySuggestion: String = ""
    ) {
        self.providedCad = providedCad
        self.recoverySuggestion = recoverySuggestion
    }
    func saveResult() {
        if let currency = self.currency {
            self.resultHistory.insert(currency, at: 0)
        }
    }
}
