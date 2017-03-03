//
//  Waiter.swift
//  ios-swift-moc
//
//  Created by Eiji Kushida on 2017/03/04.
//  Copyright © 2017年 Eiji Kushida. All rights reserved.
//

import Foundation

struct Waiter {
    let cook: CookProtocol
    
    /// ウエーターがラーメンを注文する
    func order() {        
        cook.cookRamen(bowls: 2, soup: .miso, extras: ["wakame","tamago"])
    }
}
