//: Playground - noun: a place where people can play

import UIKit



//基本的操作


//: #### Basic assignment
let a = 20
var b = 10

let sum = a + b
let sub = a - b
let mul = a * b
let div = a / b
let mod = a % b
//“Swift 3不再允许浮点数取模。例如：8 ％ 2.5这样的写法在Swift 3中将会报错。如果要对浮点数取模，只能这样： 8.truncatingRemainder(dividingBy: 2.5)。”


let isEqual     = sum == 10
let isNotEqual  = sum != 10
let isGreater   = sum >  10
let isLess      = sum <  10
let isGe        = sum >= 10
let isLe        = sum <= 10

//: Identity operator
//Swift还支持两个用于比较对象引用的操作符：Identity operator，它们用来判断两个操作数是否引用同一个对象，我们在后面讲到面向对象编程的时候，会进一步提到这两个操作符。
//===
//!==

//三元操作符
/*
 * if condition {
 *     expression1
 * }
 * else {
 *     expression2
 * }
 *
 */

let isSumEqualToTen = isEqual ? "Yes" : "No"

// opt != nil ? opt! : b

//Nil Coalescing Operator

//这是一个Swift特有的操作符，用来处理和Optional有关的判断：
var userInput: String? = "A user input"
let value = userInput ?? "A default input"


//Range operator


//: Closed range operator
// begin...end

for index in 1...5 {
    print(index)
}


//: Half-open range operator
// begin..<end [begin, end)

for index in 1..<5 {
    print(index)
}

//: #### Logic operator

let logicalNot = !isEqual
let logicalAnd = isNotEqual && isLess
let logicalOR  = isGreater  || (isLess && isLe)











