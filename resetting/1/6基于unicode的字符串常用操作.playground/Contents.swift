//: Playground - noun: a place where people can play

import UIKit


let cafee = "caf\u{0065}\u{0301}"

let beg = cafee.startIndex
let end = cafee.index(cafee.startIndex, offsetBy: 3)
cafee[beg ..< end] // Caf

String(cafee.characters.prefix(3)) // Caf

//遍历字符串中的每一个字符
var mixStr = "Swift很有趣"

for (index, value) in mixStr.characters.enumerated() {
    print("\(index): \(value)")
}


if let index = mixStr.characters.index(of: "很") {
    mixStr.insert(contentsOf: " 4.0".characters, at: index)
    // "Swift 3.0很有趣"
}

mixStr

if let cnIndex = mixStr.characters.index(of: "很") {
    // 2. Replace a specific range
    mixStr.replaceSubrange(
        cnIndex ..< mixStr.endIndex,
        with: " is interesting!")
    // Swift 3.0 is interesting!
}

let swiftView = mixStr.characters.suffix(12).dropLast()
String(swiftView) // interesting

let strViews = mixStr.characters.split(separator: " ")
strViews.map(String.init)
// ["Swift", "3.0", "is", "interesting!"]


var i = 0
let singleCharViews = mixStr.characters.split { _ in
    if i > 0 {
        i = 0
        return true
    }
    else {
        i += 1
        return false
    }
}

singleCharViews.map(String.init)






