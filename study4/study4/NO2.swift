
//
//  NO2.swift
//  study4
//
//  Created by pxl on 2017/6/8.
//  Copyright © 2017年 pxl. All rights reserved.
//  Swift 3关于函数类型的一项重要提议

import UIKit

class NO2: NSObject {
    //对于一个函数来说，把它的参数和返回值放在一起，就形成了它的签名，这是用于描述函数自身属性的一种类型。
    //对于copy 参数不会跟着走了
    
    func number1()  {
//        let fnMul = mul
//        fnMul(20, 20)
//        mul(m: 29, of: 29)
        //copy 的fnmul 不会会有m: , of:
        
        
        //--2
        // !!! Swift 2 ONLY !!! 功能类型不能有参数标签
//        var fnDiv: (_ a: Int, _ b: Int) -> Int = div
//        fnDiv = mul
        
//        fnDiv(2, 3) // This will call mul(m: 2, n: 3)
        // !!! Swift 2 ONLY !!!
        
        
    }
    
    func mul(m: Int, of n: Int) -> Int {
        return m * n
    }
    

    func div(a: Int, b: Int) -> Int {
        return a / b
    }
    

    
    
    
    /*
     简单来说，就是函数这种类型，和Swift其它类型有着完全相同的语法功能。它们主要包括：
     
     可以用来定义变量，例如我们之前定义的fnMul和fnDiv，这种类型的变量同样可以当作函数来调用；
     可以当成函数参数；
     可以被函数返回；

     */
    
    func calc<T>(_ first: T,
              _ second: T,
              _ fn: (T, T) -> T) -> T {
        return fn(first, second)
    }
    
    func number2() {
        calc(2, 3, mul)
        
        
        let mul2By = mul(2)
        mul2By(3) // 6
        
        mul(2)(3) // 6
    }
    
    func mul(_ a: Int) -> (Int) -> Int {
        func innerMul(_ b: Int) -> Int {
            return a * b
        }
        
        return innerMul
    }
    
    
    
    
    
    
    
    
    
}
