//: Playground - noun: a place where people can play

import Foundation


/* Integer Conversion*/

let twoThousan: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousan + UInt16(one)

/* Interger and Floating-Point Conversion*/

let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine

/* Type Aliases*/

typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min

/* Enforcing Preconditions*/

let index = 3
precondition(index > 0, "Index must be greater than zero.") //条件不对 就报错
