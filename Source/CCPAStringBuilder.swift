//
//  CCPAStringBuilder.swift
//  CCPAStringBuilder
//
//  Created by Fyber on 02/01/2020.
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
    
    /**
     Creates and returns the CCPA privacy string. This method should be called after calling all of the setters.
     
     - The default string (if no setters were called) will be the `1---`. The first char, which is digit is the string revision version.
     - The unset optional CCPA param is `-` and is also accepted, it is not required.
     - Once a setter was called, the appropriate CCPA param will become `Y` or `N` according to the passed boolean value.
     - A string for example, with all the setted CCPA params as true, will look like this: `1YYY`.
     */
    public func build() -> String {
        return String(charArray)
    }
    
    /**
     Explicit Notice and Opportunity to Opt-Out of Sale of Data.
     */
    public func set(explicitOptOut: Bool) -> CCPAStringBuilder {
        privateExplicitOptOut = explicitOptOut
        charArray[kExplicitOptOutIndex] = charFromBool(aBool: explicitOptOut)
        return self
    }
    
    /**
     Opt-Out of Sale: Whether the consumer has opted out of sale of their personal data.
     */
    public func set(optOutSale: Bool) -> CCPAStringBuilder {
        privateOptOutSale = optOutSale
        charArray[kOptOutSaleIndex] = charFromBool(aBool: optOutSale)
        return self
    }
    
    /**
     Support for Limited Service Provider Agreement.
     */
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
