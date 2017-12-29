
// |=------------------------------------------------------=|
//  Copyright (c) 2016 Juan Antonio Karmy.
//  Licensed under MIT License
//
//  See https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/ for Swift Language Reference
//
//  See Juan Antonio Karmy - http://karmy.co | http://twitter.com/jkarmy
//
// |=------------------------------------------------------=|

import Foundation
//Index is implicitly declared
for index in 1...5 {
    print("Index is \(index)")
}

//In this case, we don't care about the value.
for _ in 1..<6 {
    print("No value")
}

//Use tuples
let dictionary = ["one": 1, "two": 2, "three": 3]
for (numberName, numberValue) in dictionary {
    print("\(numberName) is \(numberValue)")
}

//Go through a string
var char = "e"
for char in "Yes".characters {
    print("\(char)")
}

let minuteInterval = 5
let minutes = 60

for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
//    print(tickMark)
}


//: ## While 如果条件为true 语句集合会重复执行到条件编程false
let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare+1)

board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
var square = 0

while square < finalSquare {
    var dicRoll = Int(arc4random_uniform(6)) + 1;

    square += dicRoll
    if square < board.count {
        square += board[square]
    }
    print(square)
}

print("game over!")


//: ## Switches

// No need for break, and every case must have some code.
let someChar = "e"
switch someChar {
case "a", "e", "i", "o", "u":
    print("\(someChar) is a vowel")
default:
    print("\(someChar) is a consonant")
}

//There can also be range matching

let count = 3_000_000_000_000
let countedThings = "stars"

switch count {
case 0...9:
    print("a few")
case 10...10_000:
    print("many")
default:
    print("a lot of")
}

//Use tuples

let coord = (1,1)

switch coord {
case (0,0):
    print("Origin")
case (_, 0):
    print("x axis")
case (0, _):
    print("y axis")
case (-2...2, -3...3):
    print("within boundries")
default:
    print("out of bounds")
}

//Value binding: Assign temp values to variables inside the cases.
let anotherPoint = (0, 0)
switch anotherPoint {
case (let x, 0):
    print("on the y-axis with an x value of \(x)")
case (0, let y):
    print("on the x-axis with a y value of \(y)")
case let (z, w): //This acts as the default case. Since it is only assigning a tuple, any value matches.
    print("somewhere else at (\(z), \(w))")
}

//: Where 额外检查情况


// Bind both values, plus test a condition.
switch anotherPoint {
case let (x, y) where x == y:
    print("x = y : \(x) = \(y)")
default:
    break
}

// The fallthrough line forces the switch statement to fall into the default case after a previous case.
switch anotherPoint {
case let (x, y) where x == y:
    print("x = y")
//    throw
default:
    print(" are equal")
}

//Nesting while, for and switches can be confusing sometimes
//Use labels to better use the break and continue statements
//标签
//master: while true {
//    loop: for rats in 1...5{
//        continue master
//    }
//}

//: guard else

guard true else {
    print("guard")
}

if #available(iOS 10, *) {
    print("100")
}
