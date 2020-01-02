//
//  ViewController.swift
//  CCPATester
//
//  Created by Nikita on 02/01/2020.
//  Copyright © 2020 Fyber. All rights reserved.
//

import UIKit

import CCPAStringBuilder

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        
        let privacyString:String?  = CCPAStringBuilder().build()
        
        if (privacyString != nil) {
            print(privacyString!)
        }
    }
}
