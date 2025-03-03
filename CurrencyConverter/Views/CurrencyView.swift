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
                    Text("CAD: \(currency.cad.formatted()) equals")
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
                //BUTTON
                Button {
                    viewModel.saveResult()
                    // DEBUG: Show how many items are in the resultHistory array
                    print("There are \(viewModel.resultHistory.count) elements in the resultHistory array.")
                } label: {
                    Text("Save")
                }
                .buttonStyle(.borderedProminent)
                .padding(.bottom)
                
            } else {
                
                // Show a message indicating that we are
                // awaiting reasonable input
                ContentUnavailableView(
                    "Unable to evaluate currency",
                    systemImage: "gear.badge.questionmark",
                    description: Text(viewModel.recoverySuggestion)
                )
                .frame(height: 300)
            }
            // INPUT
            TextField("CAD", text: $viewModel.providedCad)
                .textFieldStyle(.roundedBorder)
            
            // Show a title for the history
            HStack {
                Text("History")
                    .bold()
                Spacer()
            }
            .padding(.vertical)
             
            // Iterate over the history of results
            List(viewModel.resultHistory) { priorResult in
                CurrencyItemView(currency: priorResult)
            }
            .listStyle(.plain)
            
        }
        .padding()
        .navigationTitle("Currency Converter")
    }
}

#Preview {
    NavigationStack{
        CurrencyView()
    }
}
