import UIKit

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let greaterThan5 = numbers.filter{$0 >= 5}
print(greaterThan5)

//=================================

// Global Closure (same as function)

func timesTenFunc(number: Int) -> Int {
    return number * 10
}
timesTenFunc(number: 6)

//=================================

// Normal Closure

var timesTenClosure: (Int) -> Int = {
    $0 * 10
}
timesTenClosure(8)

//=================================

func sum(from: Int, to: Int, closure: (Int) -> (Int)) -> Int {
    
    var sum = 0
    
    for i in from...to {
        print("\(i) input value")

        let closureResult = closure(i)

        print("\(closureResult) closureResult value")

        sum += closureResult
    }
    
    return sum
}

//=================================

sum(from: 0, to: 7, closure: timesTenClosure)


// Longer:

sum(from: 0, to: 4, closure: { number in
    return number * 10
})

//=================================

// Shorter:

sum(from: 0, to: 6, closure: {
    $0 * 10
})




//func getResultOfNames (_ firstName:String,_ lastName:String,)
let sampleClosure: (String,Float) -> String = {
    $0 + " " + String($1)
}

let resultStr = sampleClosure("one",2.3)
let another = sampleClosure("three",4.5)


//////////////////////////////////////

let countDic = [
    "onekey":"someOneValueString",
    "twokey":"someTwoValueString",
    "threekey":"someThreeValueString",
    "fourkey":"someFourValueString",
    "fivekey":"someFiveValueString",
    "sixkey":"someSixValueString",
    "sevenkey":"someSevenValueString"
]

let givenString = "someOneValueString"
let givenKey = "fivekey"

let bc = countDic.contains { (key, value) -> Bool in
    value == givenString
}

let by = countDic.contains { (key, value) -> Bool in
    key == givenKey
}

let bv = countDic.values.contains { (value) -> Bool in
    value == givenString
}

let be = countDic.values.contains(givenString)
let bt = countDic.keys.contains(givenKey)


var checkDict:(String,String,[String:String]) -> (Bool) = { //answer in
    if $2.values.contains($0) && $2.keys.contains($1) {
        return true
    }
    return false
}

let mytest = checkDict(givenString,givenKey,countDic)

