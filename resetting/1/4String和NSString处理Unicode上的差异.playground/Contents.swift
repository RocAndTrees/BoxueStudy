//: Playground - noun: a place where people can play

import UIKit

let cafe = "Caf\u{00e9}"

let cafee = "caf\u{0065}\u{0301}"


//比较 canonically equivalent 等价语意


// 通用都是通过unicode 组合出 “显示上相同的字段“ ； 字符个数不同 String 会等于，NSString 不等于
//1. swift : String 类型 characters 不同  ==  返回 true
// NSString 类型 characters 不同  ==  返回 false

"👩‍💼".characters.count
"👨‍👩‍👧".characters.count
"👨‍👩‍👧‍👦".characters.count

//已经作出改进 边界规则统一
