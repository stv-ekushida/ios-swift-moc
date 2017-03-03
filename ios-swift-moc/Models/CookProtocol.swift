//
//  CookProtocol.swift
//  ios-swift-moc
//
//  Created by Eiji Kushida on 2017/03/04.
//  Copyright © 2017年 Eiji Kushida. All rights reserved.
//

import Foundation

protocol CookProtocol {
    
    func cookRamen(
        bowls: Int,                 // 何杯
        soup: RamenSoup,            // スープの種類
        extras: [String]) -> Void   // トッピング
}
