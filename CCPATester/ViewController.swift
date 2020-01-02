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
        
        self.view.backgroundColor = UIColor.green
        let testObj = CCPAStringBuilder()
        
        testObj.testing()
    }
}
