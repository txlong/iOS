//
//  UITextFieldX.swift
//  Calculator
//
//  Created by iAnonymous on 16/8/27.
//  Copyright © 2016年 iAnonymous. All rights reserved.
//

import UIKit

class UITextFieldX: UITextField {
    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        
        // 键盘完成按钮
        let toolBar = UIToolbar(frame: CGRectMake(0, 0, screenSize().width, 30))
        toolBar.barStyle = UIBarStyle.Default
        
        let btnFished = UIButton(frame: CGRectMake(0, 0, 50, 25))
        btnFished.setTitleColor(RGB(4, g: 170, b: 174), forState: UIControlState.Normal)
        btnFished.setTitleColor(UIColor.grayColor(), forState: UIControlState.Highlighted)
        btnFished.setTitle("完成", forState: UIControlState.Normal)
        btnFished.addTarget(self, action: #selector(UITextFieldX.finishTapped(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        let item2 = UIBarButtonItem(customView: btnFished)
        
        let space = UIView(frame: CGRectMake(0, 0, screenSize().width - btnFished.frame.width - 30, 25))
        let item = UIBarButtonItem(customView: space)
        
        toolBar.setItems([item,item2], animated: true)
        
        self.inputAccessoryView = toolBar
    }
    
    func finishTapped(sender:UIButton){
        self.resignFirstResponder()
    }
    
}

func screenSize() -> CGSize{
    return UIScreen.mainScreen().bounds.size
}

func RGB (r:CGFloat, g:CGFloat, b:CGFloat) -> UIColor {
    return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: 1)
}