//: Playground - noun: a place where people can play

import UIKit


var swift = "Swift is fun" // Swift is fun
swift.dropFirst(9) // fun


let f = "👨‍👩‍👧‍👦"
f.dropFirst(1)

//let cafee = "ccaf\u{0065}\u{0301}" // café
//cafee.dropFirst(4) // ""
//cafee.dropLast(1)  // !!! Runtime error !!!

//cafee.unicodeScalars.forEach { print($0) }
//cafee.utf8.forEach { print($0) }
//cafee.utf16.forEach { print($0) }

//NO !
//cafee.unicodeScalars.dropLast(1) // cafe 错误
//cafee.utf16.dropLast(1)          // cafe 错误
//cafee.utf8.dropLast(1)           // cafe� 错误

let cafee = "caf\u{0065}\u{0301}"

cafee.characters.count // 4

cafee.characters.startIndex // 0
cafee.characters.endIndex   // 5

//cafee.characters[2] // !!! This is WRONG !!!
//let index = cafee.index(cafee.startIndex, offsetBy: 3) // 3
//cafee[index] // é

let index = cafee.index(
    cafee.startIndex,
    offsetBy: 100,
    limitedBy: cafee.endIndex) // nil

extension String {
    subscript(index: Int) -> Character {
        guard let index = self.index(startIndex,
                                     offsetBy: index, limitedBy: endIndex) else {
                                        
                                        fatalError("String index out of range.")
        }
        
        return self[index]
    }
}

cafee[3] // é


