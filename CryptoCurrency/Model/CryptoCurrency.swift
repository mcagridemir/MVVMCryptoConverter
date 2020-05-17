//
//  CryptoCurrency.swift
//  CryptoCurrency
//
//  Created by Çağrı Demir on 17.05.2020.
//  Copyright © 2020 Cagri Demir. All rights reserved.
//

import Foundation

struct CryptoCurrency: Decodable //Bir API veya internetten veri alirken format duzgun olursa *decodable ile otomatik alabilirsin yollarken ise *encodable kullanabilirsin, *codable eger bir model ile hem get hem post kullaniyorsam!!!!!*****
{
    let currency: String
    let price: String
}
