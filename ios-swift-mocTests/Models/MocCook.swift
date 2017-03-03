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
    
    func verifyCookRamen(bowls: Int, soup: RamenSoup, extras: [String],
                         file: StaticString = #file,
                         line: UInt = #line
                         ) {
        
        XCTAssertEqual(cookRamenCallCount, 1, file: file, line: line)
        XCTAssertEqual(cookRamenLastBowls, bowls, file: file, line: line)
        XCTAssertEqual(cookRamenLastSoup, soup, file: file, line: line)
        XCTAssertEqual(cookRamenLastExtras, extras, file: file, line: line)
    }
}
