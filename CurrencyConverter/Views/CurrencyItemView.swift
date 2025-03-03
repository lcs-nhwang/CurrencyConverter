//
//  CurrencyItemView.swift
//  CurrencyConverter
//
//  Created by Nicholas Hwang on 3/3/2025.
//

import SwiftUI

struct CurrencyItemView: View {
    
    // MARK: Stored properties
    let currency: Currency
    
    // MARK: Computed properties
    var body: some View {
        
        HStack(alignment: .center) {
            Text("CAD: \(currency.cad.formatted())")
                .font(.system(size:20))
            Text("USD: \(currency.usd.formatted())")
            Text("UK: \(currency.ukPound.formatted())")
            Text("Euros: \(currency.euro.formatted())")
        }
        .lineLimit(1)
        .minimumScaleFactor(0.5)
        
    }
}
 
#Preview {
    List {
        CurrencyItemView(currency: Currency(cad: 1))
        CurrencyItemView(currency: Currency(cad: 10))
        CurrencyItemView(currency: Currency(cad: 12))
        CurrencyItemView(currency: Currency(cad: 13))
        CurrencyItemView(currency: Currency(cad: 14))
        CurrencyItemView(currency: Currency(cad: 15))
        CurrencyItemView(currency: Currency(cad: 16))

    }
    .listStyle(.plain)
}
