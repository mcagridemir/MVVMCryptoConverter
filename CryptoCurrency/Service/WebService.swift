//
//  WebService.swift
//  CryptoCurrency
//
//  Created by Çağrı Demir on 17.05.2020.
//  Copyright © 2020 Cagri Demir. All rights reserved.
//

import Foundation

class WebService {
    
    func downloadCurrencies(url: URL, completion: @escaping ([CryptoCurrency]?) -> ()) { //Birden fazla oldugu icin dizi.
        //@escaping, bir closure dan yani tamamlama blogunda escaping kullaninca fonksiyon calisinca sonunda birsey dondurmek istiyor isek kullanilir. Once donecek olan data cesidi olmali, sonra bir void donecegi yazmali.
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            }
            else if let data = data {
                
                let cryptoList = try? JSONDecoder().decode([CryptoCurrency].self, from: data)
                
                print(cryptoList)
                
                if let cryptoList = cryptoList {
                    completion(cryptoList)
                }
            }
        }.resume() // islemi baslatmamiza olanak saglayan resume() dur.
    }
}
