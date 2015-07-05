//
//  main.swift
//  02-SimpleValues
//
//  Created by iAnonymous on 15/7/5.
//  Copyright (c) 2015年 iAnonymous. All rights reserved.
//

import Foundation

var myVariable = 42
myVariable = 50
let myConstant = 42

let implicitInteger = 70
let implicitDobule = 70.0
let explicitDouble:Double = 70

let newConstant:Float = 4

let lable = "The width is "
let width = 94
let widthLable = lable + String(width)

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

println("Hi,tom.Today's tempureture is \(48.5)°")

var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle oft water"

var occuptions = [
    "Malclm":"Captain",
    "Kaylee":"Mechanic"
]
occuptions["Jayne"] = "Public Relations"

let emptyArray = [String]()
let emptyDictionary = [String:Float]()

// 如果类型可以推断出来，可以这样创建空数组
var shoppingList1 = []
var shoppingDictionary1 = [:]