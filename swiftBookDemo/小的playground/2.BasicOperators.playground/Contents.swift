//: Playground - noun: a place where people can play

import Foundation


let names = ["Anna", "Alex", "Brian", "Jack"]

/// One-Sided Ranges

//for name in names[2...] {
//    print(name)
//}
//
//for name in names[...2] {
//    print(name)
//}

for name in names[..<2] {
    print(name)
}

let range = ...5
range.contains(7)
range.contains(4)
range.contains(-1000)

