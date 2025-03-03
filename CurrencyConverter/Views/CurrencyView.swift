//
//  ContentView.swift
//  CurrencyConverter
//
//  Created by Nicholas Hwang on 3/3/2025.
//

import SwiftUI

struct CurrencyView: View {
    //MARK: Stored Properties
    @State var viewModel = CurrencyViewModel()
    //MARK: Computed Properties
    var body: some View {
        VStack {
            Spacer()
            if let currency = viewModel.currency {
                VStack(alignment: .center) {
                    Text("CAD: \(currency.cad) equals")
                        .font(.system(size: 36))
                    Spacer()
                    Text("USD: \(currency.usd.formatted())")
                        .font(.system(size: 46))
                    Text("UK Pounds: \(currency.ukPound.formatted())")
                        .font(.system(size: 46))
                    Text("Euros: \(currency.euro.formatted())")
                        .font(.system(size: 46))
                }
                .lineLimit(1)
                .minimumScaleFactor(0.5)
                .frame(height:300)
            }
            
        }
        .padding()
    }
}

#Preview {
    CurrencyView()
}
