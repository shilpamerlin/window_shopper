//
//  window_shopperTests.swift
//  window_shopperTests
//
//  Created by Shilpa Joy on 2019-03-02.
//  Copyright © 2019 Shilpa Joy. All rights reserved.
//

import XCTest

class window_shopperTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testHoursNeeded() {
        XCTAssert(Wage.getHours(forwage: 25, andPrice: 100) == 4)
        XCTAssert(Wage.getHours(forwage: 13.25, andPrice: 150.53) == 12)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
