//
//  PortfolioViewModel.swift
//  CryptoApp
//
//  Created by mk.pwnz on 09.06.2021.
//

import Foundation


class PortfolioViewModel: ObservableObject {
    static let shared = PortfolioViewModel()
    
    private init () { }
    
    @Published var selectedCoin: Coin? = nil
    @Published var coinsQuantityText: String = ""
    @Published var showCheckmark: Bool = false
    
    func getCurrentValueOfHoldings() -> Double {
        if let quantity = coinsQuantityText.asDouble() {
            return quantity * (selectedCoin?.currentPrice ?? 0)
        }
        return 0
    }
    
}
