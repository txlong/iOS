//
//  main.swift
//  03-ControlFlow
//
//  Created by iAnonymous on 15/7/5.
//  Copyright (c) 2015年 iAnonymous. All rights reserved.
//

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
println(teamScore)

var optionString:String? = "Hello"
println(optionString == nil)

//var optionName:String? = "John Appleseed"
var optionName:String? = nil
var greeting = "Hello!"
if let name = optionName {
    greeting = "Hello \(name)"
} else {
    greeting = "new string"
}
println(greeting)

let vegetable = "red pepper"
switch vegetable {
    case "celery":
        let vegetableComment = "Add some raisins and make ants on a log."
    case "cucumber", "watercress":
        let vegetableComment = "That would make a good tea sandwich."
    case let x where x.hasSuffix("papper"):
        let vegetableComment = "Is it a spicy \(x)"
    default:
        let vegetableComment = "Everything tastes good in soup."
}
// 运行switch中匹配到的字句之后，程序会推出switch，并不会继续向下运行，所以不需要在每个语句后边写break

let interestingNumber = [
    "Prime":[2, 3, 5, 7, 11, 13],
    "Fibonacci":[1, 1, 2, 3, 5, 8],
    "Square":[1, 4, 9, 16, 25]
]

var largest = 0
var largestKind = ""
for (kind, numbers) in interestingNumber {
    for number in numbers {
        if number > largest {
            largest = number
            largestKind = kind
        }
    }
}
println(largest)
println(largestKind)

var n = 2
while n < 100 {
    n = n * 2
}
println(n)

var m = 2
do {
    m = m * 2
} while m < 100
println(m)

var firstForLoop = 0
for i in 0..<4 {
    firstForLoop += i
}
println(firstForLoop)

var secondForLoop = 0
for var i = 0; i < 4; ++i {
    secondForLoop += i
}
println(secondForLoop)
// 使用..<创建的范围不包括商界，如果想要包含的话需要使用...