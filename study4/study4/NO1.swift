//
//  No1.swift
//  study4
//
//  Created by pxl on 2017/6/8.
//  Copyright © 2017年 pxl. All rights reserved.
//  函数的返回值以及灵活多变的参数

import UIKit

class NO1: NSObject {
    
    
    /*
     func是定义函数的关键字，后面是函数名；
     ()中是可选的参数列表，既然是最简单的函数，自然我们可以让它留空；
     ()后面，是函数的返回值，同样，简单起见，我们也没有定义返回值；
     {}中是函数要封装的逻辑，其实，在这里，我们调用的print，也是一个函数，只不过，它是一个定义在标准库中的函数，并且带有一个参数罢了；
    **/
    func printName() {
        print("My name is Mars")
    }
    
    
    //向函数传递参数
    
    func mul(m: Int, n: Int){
        print(m * n)
    }
    
    //理解参数的两种名称
    //个用于在定义函数的时候使用，叫做argument name，一个用于在调用函数时使用，叫做argument label。
    // internal name / external name
    func mul(multiplicand m: Int, of n: Int)  {
        print(m * n)
    }
    
    //使用_表示忽略
    func mul(_ m: Int, off n: Int) {
        print(m * n)
    }
    
    
    //为参数设置默认值
    func mul(_ m: Int, of n: Int = 1) {
        print(m * n)
    }
    
    
    //定义可变长参数
    //No1().mul(2, 3, 5)
    func mul(_ numbers: Int ...) {
        let arrayMul = numbers.reduce(1, *)
        print("mul : \(arrayMul)")
    }
    
    
    //定义inout参数
    /*
     在Swift里，函数的参数有一个性质：默认情况下，参数是只读的，这也就意味着：
     
     你不能在函数内部修改参数值；
     你也不能通过函数参数对外返回值；
    */
    
    //其实，很简单，我们需要用inout关键字修饰一下参数的类型，明确告诉Swift编译器我们要修改这个参数的值：
    func mul(result: inout Int, _ numbers: Int ...) {
        result = numbers.reduce(1, *) // !!! Error here !!!
        print("mul: \(result)")
    }
    
    //var result = 0
    //mul(result: &result, 2, 3, 4, 5, 6, 7)
    //result // 5040
    
    
}






