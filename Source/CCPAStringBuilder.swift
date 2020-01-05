//
//  CCPAStringBuilder.swift
//  CCPAStringBuilder
//
//  Created by Nikita on 02/01/2020.
//  Copyright © 2020 Fyber. All rights reserved.
//

import Foundation

public class CCPAStringBuilder {
    // MARK: Consts
    
    let kSpecVersion: String = "1"
    let kNotApplicableSign: String = "-"
    let kOptParamsCount: Int = 3
    
    let kSpecVersionIndex: Int = 0
    let kExplicitOptOutIndex: Int = 1
    let kOptOutSaleIndex: Int = 2
    let kLimitedServiceProviderAgreementIndex: Int = 3
    
    // MARK: Members
    
    var charArray: Array<Character> = Array<Character>()
    
    private var privateExplicitOptOut: Bool = false
    public var explicitOptOut: Bool { get { return privateExplicitOptOut } }
    
    private var privateOptOutSale: Bool = false
    public var optOutSale: Bool { get { return privateExplicitOptOut } }
    
    private var privateLimitedServiceProviderAgreement: Bool = false
    public var limitedServiceProviderAgreement: Bool { get { return privateLimitedServiceProviderAgreement }}
    
    // MARK: Inits
    
    public init() {
        charArray = Array<Character>(String(repeating: kNotApplicableSign, count: kOptParamsCount + 1))
        charArray[kSpecVersionIndex] = Character(kSpecVersion)
    }
    
    // MARK: API
    
    public func build() -> String {
        return String(charArray)
    }
    
    public func set(explicitOptOut: Bool) -> CCPAStringBuilder {
        privateExplicitOptOut = explicitOptOut
        charArray[kExplicitOptOutIndex] = charFromBool(aBool: explicitOptOut)
        return self
    }
    
    public func set(optOutSale: Bool) -> CCPAStringBuilder {
        privateOptOutSale = optOutSale
        charArray[kOptOutSaleIndex] = charFromBool(aBool: optOutSale)
        return self
    }
    
    public func set(limitedServiceProviderAgreement: Bool) -> CCPAStringBuilder {
        privateLimitedServiceProviderAgreement = limitedServiceProviderAgreement
        charArray[kLimitedServiceProviderAgreementIndex] = charFromBool(aBool: limitedServiceProviderAgreement)
        return self
    }
    
    // MARK: Service
    
    private func charFromBool(aBool: Bool) -> Character {
        return aBool ? "Y" : "N"
    }
}
