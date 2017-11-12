//: Playground - noun: a place where people can play

import UIKit

Int.min
Int.max

Int64.min
Int64.max

//: Number literal

let fifteenInDecimal = 15
let fifteenInHex = 0xF
let fifteenInOctal = 0o17
let fifteenInBinary = 0b1111


//: Number literal
let million = 1_000_000

var oneThirdInFloat: Float = 1/3
var oneThirdInDouble: Double = 1/3

print(oneThirdInFloat)  // 0.333333
print(oneThirdInDouble) // 0.333333333333333

var PI = 0.314e1
PI = 314e-2


var three = 3
type(of: three) // Int.Type

var zeroPointForteen = 0.14
type(of: zeroPointForteen) // Double.Type

PI = 3 + 0.14
type(of: PI)

//PI = three + zeroPointForteen

//Double(Value)把一个Int类型的three，"转换"成了浮点数。在这里，之所以我们要对转换加引号，是因为我们并没有真的把three的类型从Int转换成Double，而是用three的值，初始化了一个新的值为3的Double
PI = Double(three) + zeroPointForteen









