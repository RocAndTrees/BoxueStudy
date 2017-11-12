//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport


var array1 : Array<Int> = Array<Int>()
var array2: [Int] = []
var array3 = array2

var threeInts = [Int](repeatElement(3, count: 3))
var sixInts = threeInts + threeInts
var fiveInts = [1, 3, 3, 4, 5]

fiveInts.count
array1.isEmpty

//

fiveInts[2]
//fiveInts[5]
fiveInts[0 ... 2]
type(of: fiveInts[0 ... 2])

for value in fiveInts {
    print(value)
}

for(index, value) in fiveInts.enumerated(){
    print("\(index):\(value)")
}

fiveInts.forEach{print($0)}

//---

array1.append(1)
array1 += [2, 3, 5]

array1.insert(0, at: array1.startIndex)

array1.remove(at: 4)
array1.removeAll()










