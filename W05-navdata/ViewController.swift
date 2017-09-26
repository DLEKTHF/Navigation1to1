//
//  ViewController.swift
//  W05-navdata
//
//  Created by SWUCOMPUTER on 2017. 9. 26..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var oneTwo: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="toOrderView"{
            let destVC=segue.destination as! OrderViewController
            let ordered: String! = oneTwo.titleForSegment(at: oneTwo.selectedSegmentIndex)
            
            destVC.title = ordered
            
            var outString: String = "감사합니다!!\n 주문내역: <"
            outString += ordered
            outString += "> 맞나요?"
            destVC.info = outString
        }
    }
    
        //let destination = segue.destination
        //let button = sender as! UIButton
        //destination.title = button.titleLabel?.text

}

