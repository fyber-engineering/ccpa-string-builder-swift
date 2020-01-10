//
//  ViewController.swift
//  CCPATester
//
//  Created by Fyber on 02/01/2020.
//  Copyright © 2020 Fyber. All rights reserved.
//

import UIKit

import CCPAStringBuilder

class ViewController: UIViewController {
    @IBOutlet weak var usPrivacyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let privacyString = CCPAStringBuilder()
            .set(explicitOptOut: true)
            .set(optOutSale: true)
            .set(limitedServiceProviderAgreement: true)
            .build()
                
        print(privacyString)
        usPrivacyLabel.text = privacyString
    }
}
