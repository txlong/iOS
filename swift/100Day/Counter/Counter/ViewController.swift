//
//  ViewController.swift
//  Counter
//
//  Created by iAnonymous on 16/8/27.
//  Copyright © 2016年 iAnonymous. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var number: Int = 0
    var formatter = NSNumberFormatter()
    
    @IBOutlet var numberLabel: UILabel!
    @IBAction func resetClick(sender: AnyObject) {
        number = 0;
        setLabel()
    }
    @IBAction func tapClick(sender: AnyObject) {
        number += 1
        setLabel()
    }
    
    func setLabel() {
//        numberLabel.text = "\(number)"
        numberLabel.text = formatter.stringFromNumber(number)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
//        formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle //$72,900
        formatter.numberStyle = NSNumberFormatterStyle.DecimalStyle //72,900
//        formatter.numberStyle = NSNumberFormatterStyle.PercentStyle //90%
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

