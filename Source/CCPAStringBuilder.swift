//
//  CCPAStringBuilder.swift
//  CCPAStringBuilder
//
//  Created by Nikita on 02/01/2020.
//  Copyright © 2020 Fyber. All rights reserved.
//

import Foundation

public class CCPAStringBuilder {
    let specVersion:String = "1"
    let notApplicableSign:String = "-"
    
    var defaulString:String
    var finalString = NSMutableString()
    
    public var explicitOptOut:Bool = false
    public var optOutSale:Bool = false
    public var limitedServiceProviderAgreement:Bool = false
    
    public init() {
        defaulString = "\(specVersion)\(notApplicableSign)\(notApplicableSign)\(notApplicableSign)"
    }
    
    public func build() -> String? {
        finalString = NSMutableString(string: defaulString)
        
        return "\(finalString)"
    }
}
