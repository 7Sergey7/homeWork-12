//
//  main.swift
//  homeWork 12
//
//  Created by Seroj on 03.06.22.
//

import Foundation


//homeWork 12.1

enum Compas {
    case north
    case sount
    case east
    case west
}

let upSide: Compas = .north
let downSide: Compas = .sount
let rightSide: Compas = .east
let leftSide: Compas = .west


//homeWork 12.2

enum YearMonths {
    case january
    case february
    case march
    case april
    case may
    case june
    case july
    case august
    case september
    case octeber
    case november
    case december
}

let month1:YearMonths = .january
let month2:YearMonths = .february
let month3:YearMonths = .march
let month4:YearMonths = .april
let month5:YearMonths = .may
let month6:YearMonths = .april
let month7:YearMonths = .june
let month8:YearMonths = .july
let month9:YearMonths = .august
let month10:YearMonths = .september
let month11:YearMonths = .octeber
let month12:YearMonths = .december

//homeWork 12.3

enum YearMonths: CaseIterable {
    case january
    case february
    case march
    case april
    case may
    case june
    case july
    case august
    case september
    case octeber
    case november
    case december
}

for item in YearMonths.allCases {
    print(item)
}

//homeWork 12.4

enum Condition {
    case newlyCreated
    case inProcess
    case isChecked
    case competed
}

let oficeWorkerCondition: Condition = .inProcess

//homeWork 12.5
//////?????????????????????/ 

enum Condition {
    case newlyCreated (start: String, end: String)
    case inProcess (start: String, end: String)
    case isChecked (start: String, end: String)
    case completed (start: String, end: String)
}
//(start: "9 : 05 AM", end: "12 : 25 PM")
var oficeWorkerCondition: Condition = .newlyCreated(start: "9 : 05 AM", end: "12 : 25 PM")
oficeWorkerCondition = .inProcess(start: "" , end: "")

switch oficeWorkerCondition {
case .newlyCreated(var start, var end):
    start = "9 : 05"
    end = "12 : 25"
    print("worker start working`\(start), end working - \(end)")
case .inProcess(var start, var end):
    start = "13 : 05"
    end = "14 : 25"
    print("worker start working`\(start), end working - \(end)")
case .isChecked(var start, var end):
    start = "9 : 05"
    end = "12 : 25"
    print("worker start working`\(start), end working - \(end)")
case .completed(var start, var end):
    start = "9 : 05"
    end = "12 : 25"
    print("worker start working`\(start), end working - \(end)")
}


//oficeWorkerCondition = .inProcess(start: "12  : 40 PM", end: "5 : 15 PM")
//print(oficeWorkerCondition)

//homeWork 12.6

/////  ?????????????????????????????????????//////

enum Condition {
    case newlyCreated (start: String, end: String, data: Date)
    case inProcess (start: String, end: String, data: Date)
    case isChecked (start: String, end: String, data: Date)
    case completed (start: String, end: String, data: Date)
}

var oficeWorkerCondtion = Condition.newlyCreated(start: "9 : 05 AM", end: "12 : 25 PM", data: Date())
oficeWorkerCondtion = .inProcess(start: "12 : 40 PM", end: "5 : 15 PM", data: Date())
print(oficeWorkerCondtion)

//////////////////////////////////////////////////////////////////
///????????????????????????

enum Condition {
    case newlyCreated (start: String, end: String, data: Date)
    case inProcess (start: String, end: String, data: Date)
    case isChecked (start: String, end: String, data: Date)
    case completed (start: String, end: String, data: Date)
}

var oficeWorkerCondtion = Condition.newlyCreated

switch oficeWorkerCondtion {
case .newlyCreated(let start, let end, let data):

case .inProcess(let start, let end, let data):
    <#code#>
case .isChecked(let start, let end, let data):
    <#code#>
case .completed(let start, let end, let data):
    <#code#>
}


//homeWork 12.7

func sumOfInt1 (firstInt1: Int, secondInt1: Int) -> Int {
    let result1 = firstInt1 + secondInt1
    return result1
}

enum ButtonCondition  {
    case normal (String)
    case selected ((Int, Int) -> Int)
    case notActive
}

var button:ButtonCondition = ButtonCondition.normal("click")
button = .selected(sumOfInt1)
//button = .notActive


switch button {
case .normal(_):
    print("click")
case .selected(_):
    print(sumOfInt1(firstInt1: 3, secondInt1: 2))
case .notActive:
    print("Button is not activated")
}


//homeWork 12.8

let diffOfInt = { (a: Int, b: Int) -> Int in
    return a - b
}

enum ButtonCondition  {
    case normal (String)
    case selected ((Int, Int) -> Int)
    case notActive
}
var button:ButtonCondition = ButtonCondition.normal("click")
button = .selected(diffOfInt)

switch button {
case .normal(_):
    print("click")
case .selected(_):
    print(diffOfInt(3, 1))
case .notActive:
    print("Button is not activated")
}
