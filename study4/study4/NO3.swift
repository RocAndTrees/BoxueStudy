
//
//  NO3.swift
//  study4
//
//  Created by pxl on 2017/6/8.
//  Copyright © 2017年 pxl. All rights reserved.
//  函数和Closure真的是不同的类型么？
//  提起closure，如果你有过其他编程语言的经历，你可能会立即联想起一些类似的事物，例如：匿名函数、或者可以捕获变量的一对{}，等等。但实际上，我们很容易搞混两个概念：Closure expression和Closure。它们究竟是什么呢？我们先从closure expression开始。
//

import UIKit

class NO3: NSObject {
    
    

    //1. 理解Closure Expressions
    
    func square(n: Int) -> Int {
        return n * n
    }
    
    let squareExpression = { (n: Int) -> Int in
        return n * n
    }
    
    func No1()  {
        square(n: 2)
        squareExpression(2)
        
        
        let numbers = [1, 2, 3, 4, 5]
        print(numbers.map(square))
        // numbers.map(squareExpression)
        
        numbers.map({ (n: Int) -> Int in
            return n * n
        })
        
        
        numbers.map({n in return n * n})
        //第三，如果你觉得在closure expression中为参数起名字是个意义不大的事情，我们还可以使用Swift内置的$0/1/2/3/4这样的形式作为closure expression的参数替代符，这样，我们连参数声明和in关键字也都可以省
        
        numbers.map({$0 * $0})
        
        
        
        numbers.sorted(by: {$0 > $1})
        
        
        
    }
    
    
    
}




