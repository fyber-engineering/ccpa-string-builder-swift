//
//  CCPAStringBuilderTests.swift
//  CCPAStringBuilderTests
//
//  Created by Nikita on 02/01/2020.
//  Copyright © 2020 Fyber. All rights reserved.
//

import XCTest

@testable import CCPAStringBuilder

class CCPAStringBuilderTests: XCTestCase {
    let stringBuilder = CCPAStringBuilder()

    override func setUp() {}

    override func tearDown() {}
    
    func testDefaultString() {
        let result:String? = stringBuilder.build()
        
        XCTAssertTrue((result != nil), "the default sring is nil")
        XCTAssertEqual(result!, "1---", "the default string is wrong")
    }

/*
    func testPerformanceExample() {
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
*/
}
