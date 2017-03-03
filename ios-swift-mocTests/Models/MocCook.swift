//
//  MocCook.swift
//  ios-swift-moc
//
//  Created by Eiji Kushida on 2017/03/04.
//  Copyright © 2017年 Eiji Kushida. All rights reserved.
//

import XCTest
@testable import ios_swift_moc

class MockCook: CookProtocol {
    
    var cookRamenCallCount = 0
    var cookRamenLastBowls = 0
    var cookRamenLastSoup: RamenSoup?
    var cookRamenLastExtras: [String] = []
    
    func cookRamen(bowls: Int, soup: RamenSoup, extras: [String]) {        
        cookRamenCallCount += 1
        cookRamenLastBowls = bowls
        cookRamenLastSoup = soup
        cookRamenLastExtras = extras
    }
    
    func verifyCookRamen(bowls: Int, soup: RamenSoup, extras: [String]) {
        
        XCTAssertEqual(cookRamenCallCount, 1)
        XCTAssertEqual(cookRamenLastBowls, bowls)
        XCTAssertEqual(cookRamenLastSoup, soup)
        XCTAssertEqual(cookRamenLastExtras, extras)
    }
}
