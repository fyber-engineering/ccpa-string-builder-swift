//
//  CCPAStringBuilderTests.swift
//  CCPAStringBuilderTests
//
//  Created by Fyber on 02/01/2020.
//  Copyright © 2020 Fyber. All rights reserved.
//

import XCTest

@testable import CCPAStringBuilder

class CCPAStringBuilderTests: XCTestCase {
    let stringBuilder = CCPAStringBuilder()

    override func setUp() {}

    override func tearDown() {}
    
    func testUnsetParamsString() {
        let result:String = stringBuilder.build()
        
        XCTAssertEqual(result, "1---", "the string is wrong")
    }

    func testExplicitOptOutTrue() {
        let result:String = stringBuilder.set(explicitOptOut: true).build()

        XCTAssertEqual(result, "1Y--", "the string is wrong")
    }
    
    func testExplicitOptOutFalse() {
        let result:String = stringBuilder.set(explicitOptOut: false).build()

        XCTAssertEqual(result, "1N--", "the string is wrong")
    }
    
    func testOptOutSaleTrue() {
        let result:String = stringBuilder.set(optOutSale: true).build()

        XCTAssertEqual(result, "1-Y-", "the string is wrong")
    }
    
    
    func testOptOutSaleFalse() {
        let result:String = stringBuilder.set(optOutSale: false).build()

        XCTAssertEqual(result, "1-N-", "the string is wrong")
    }
    
    func testLimitedServiceProviderAgreementTrue() {
        let result:String = stringBuilder.set(limitedServiceProviderAgreement: true).build()

        XCTAssertEqual(result, "1--Y", "the string is wrong")
    }
    
    
    func testLimitedServiceProviderAgreementFalse() {
        let result:String = stringBuilder.set(limitedServiceProviderAgreement: false).build()

        XCTAssertEqual(result, "1--N", "the string is wrong")
    }
    
    func testAllSetParamsTrue() {
        let result = CCPAStringBuilder()
            .set(explicitOptOut: true)
            .set(optOutSale: true)
            .set(limitedServiceProviderAgreement: true)
            .build()
        
        XCTAssertEqual(result, "1YYY", "the string is wrong")
    }
    
    func testAllSetParamsFalse() {
        let result = CCPAStringBuilder()
            .set(explicitOptOut: false)
            .set(optOutSale: false)
            .set(limitedServiceProviderAgreement: false)
            .build()
        
        XCTAssertEqual(result, "1NNN", "the string is wrong")
    }
}
