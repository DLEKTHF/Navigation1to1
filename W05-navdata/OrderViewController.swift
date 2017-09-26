//
//  OrderViewController.swift
//  W05-navdata
//
//  Created by SWUCOMPUTER on 2017. 9. 26..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController {

    @IBOutlet var infolabel: UILabel!
    var info: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let contentString = info {
            infolabel.text=contentString
        }
    }
   
}
