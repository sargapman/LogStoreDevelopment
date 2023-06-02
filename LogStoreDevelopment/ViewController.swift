//
//  ViewController.swift
//  LogStoreDevelopment
//
//  Created by Monty Boyer on 5/4/20.
//  Copyright © 2020 Monty Boyer. All rights reserved.
//

import UIKit
import LogStore

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // a couple of test log entries
        printLog("viewDidLoad")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // a couple of test log entries
        printLog("viewDidAppear")
       
       // some experiments
//          let todString = Date.todFromDate(date: Date())
//          print(todString)
//       
//          let tAndDString = Date.adjustedDateAndTimeStringFromDate(date: Date(), returnGMT: false)
//          print(tAndDString)
    }

}

