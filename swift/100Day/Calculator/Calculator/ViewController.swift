//
//  ViewController.swift
//  Calculator
//
//  Created by iAnonymous on 16/8/27.
//  Copyright © 2016年 iAnonymous. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    var currentPrice: Double = 0.0
    var currentTip: Double = 15.0
    var tipPrice: Double = 0.0
    var totalPrice: Double = 0.0
    
    var formatter: NSNumberFormatter!
    @IBOutlet var resultLabel: UITextField!
    @IBOutlet var tipPercent: UILabel!
    @IBOutlet var tipPercentResult: UILabel!
    @IBOutlet var totalResult: UILabel!
    @IBOutlet var tipSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        formatter = NSNumberFormatter()
        formatter.numberStyle = .CurrencyStyle
        resultLabel.addTarget(self, action: #selector(finishEditing(_:)), forControlEvents:.EditingDidEnd)
        resultLabel.addTarget(self, action: #selector(startEditing(_:)), forControlEvents: .EditingDidBegin)
        tipSlider.addTarget(self, action: #selector(sliderDidchange(_:)), forControlEvents: .ValueChanged)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func startEditing(sender: UITextField) {
        if currentPrice != 0 {
            resultLabel.text = "\(Int(currentPrice))"
        }
    }

    func finishEditing(sender: UITextField) {
        currentPrice = Double(sender.text!)!
        refreshPage()
    }

    func sliderDidchange(sender: UISlider) {
        currentTip = Double(sender.value)
        refreshPage()
    }
    
    func refreshPage() {
        tipPrice = currentPrice * (currentTip / 100)
        totalPrice = currentPrice + tipPrice
        resultLabel.text = formatter.stringFromNumber(currentPrice)
        tipPercent.text = "Tip(\(Int(currentTip))%)"
        tipPercentResult.text = formatter.stringFromNumber(tipPrice)
        totalResult.text = formatter.stringFromNumber(totalPrice)
    }
}