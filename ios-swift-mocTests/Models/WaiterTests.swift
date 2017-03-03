//
//  WaiterTests.swift
//  ios-swift-moc
//
//  Created by Eiji Kushida on 2017/03/04.
//  Copyright © 2017年 Eiji Kushida. All rights reserved.
//

import XCTest
@testable import ios_swift_moc

class WaiterTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testOrder_ShouldCookRamen() {        
        
        let mocCook = MockCook()
        let waiter = Waiter(cook: mocCook)
        
        waiter.order()        
        XCTAssertEqual(mocCook.cookRamenCallCount, 1)
    }
}
