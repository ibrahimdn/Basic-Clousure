


///*****  CLOUSURE *****///


// SOURCE : https://www.bobthedeveloper.io/blog/no-fear-closure-in-swift-with-bob-part-2

/* EXAMPLE 1 */

import UIKit

func timesTenFunc(number: Int) -> Int { return number * 10}

var timesTenClosure: (Int) -> Int = { $0 * 10 }
timesTenFunc(number: 10) // 100
timesTenClosure(10) // 100



func sum (from: Int,to: Int, clousure:(Int) -> (Int)) -> Int {
    var sum = 0
    for i in  from...to {
        sum += clousure(i)
    }
    return sum
}

sum(from: 0, to: 10, clousure: timesTenFunc)
sum(from: 0, to: 10, clousure: timesTenClosure)



/* EXAMPLE 2 */



func setName(number: Int) -> Int {
    for i in 0...number {
          print(" \(i) clousure")
    }
  
    return number
}

func sum2 (from: Int, to: Int, clousure: (Int) -> Int) -> Int {
    var sum = 0
    for i in  from...to {
        sum += clousure(i)
    }
    return sum
}

sum2(from: 0, to: 10, clousure: setName)
