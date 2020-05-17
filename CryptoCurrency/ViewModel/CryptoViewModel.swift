//
//  CryptoViewModel.swift
//  CryptoCurrency
//
//  Created by Çağrı Demir on 17.05.2020.
//  Copyright © 2020 Cagri Demir. All rights reserved.
//

import Foundation

struct CryptoListViewModel {
    let cryptoCurrencyList: [CryptoCurrency]
}

extension CryptoListViewModel {
    
    func numberOfRowsInSection() -> Int {
        return self.cryptoCurrencyList.count
    }
    func cryptoAtIndex(_ index: Int) -> CryptoViewModel {
        let crypto = self.cryptoCurrencyList[index]
        return CryptoViewModel(crypto)
    }
}

extension String {
    func printName() {
        print("Cagri")
    }
}

struct CryptoViewModel {
    let cryptoCurrency: CryptoCurrency

    init(_ crypto: CryptoCurrency) {
        self.cryptoCurrency = crypto
    }
}

extension CryptoViewModel {
    var name: String {
        return self.cryptoCurrency.currency
    }
    
    var price: String {
        return self.cryptoCurrency.price
    }
}
