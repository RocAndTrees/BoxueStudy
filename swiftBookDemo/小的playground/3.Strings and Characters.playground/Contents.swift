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

/// String Literals

let quotation = """
The white Rabbit put on his spectacles.

The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""

let singleLineString = "These are the same."
let multilineString =
"""
These are the same.
"""

let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""

let threeDoubleQuotes = """
Escaping the first quote \"""
Escaping all three quotes \"\"\"
"""

let goodStart = """
one
two
"""
let end = """
three
end
"""
print(goodStart + end)

//let greeting = "Guten Tag!"
//greeting.endIndex
//print(greeting.endIndex)
//
//var welcome = "hello"
//welcome.insert("!", at: welcome.endIndex)
//welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))

/// Substrings

let greeting = "Hello, world!"
let index1 = greeting.index(of: ",") ?? greeting.endIndex
let beginning = greeting[..<index1]
beginning.description
let newString = String(beginning)







