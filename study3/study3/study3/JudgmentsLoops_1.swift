//
//  几乎所有语言都有的条件判断和循环.swift
//  study3
//
//  Created by pxl on 2017/6/8.
//  Copyright © 2017年 pxl. All rights reserved.
//

import UIKit

class JudgmentsLoops_1: NSObject {

    
    func nume1(){
        let light = "red"
        var action : String = ""
        
        if light == "red" {
            action = "stop"
        }
        else if light == "yellow" {
            action = "caution"
        }
        else if light == "green"{
         
            action = "go"
        }
        else {
            action = "invalid"
        }
        
        //--------
        switch light {
        case "red":
            action = "stop"
        case "yellow":
            action = "caution"
        case "green" :
            action = "go"
        default:
            action = "invalid"
        }
        print(action)
        
        
        //首先，case语句必须exhausitive，也就是说，必须覆盖switch后面出现的表达式的所有情况，否则会导致编译错误。例如，我们去掉default，就会得到下面的错误：
        //switch must be exhaustive, consider adding a default clause
    }
    
    
    /// 循环控制语句
    func nume2() {
        let vowel = ["a","e", "i", "o", "u" ]
        
        for char in vowel {
            print(char)
        
        }
        // aeiou
        
        for number in 1...10 {
            print(number)
        }
        
        // 12345678910
        
        //要说明的是，传统C风格的三段式for循环，已经在Swift 3中被移除了：
        

//        for var i = 0; i< 10 ; i +=1{
//            print(i)
//        }
        //第二个循环的方式是while，它有前置判断和后置判断两种形式，基本上保留了原汁原味的C用法：
        //while 
        var i = 0
        while i < 10 {
            print(i)
            i += 1
        }
        
        //do .. while 
        repeat{
            print(i)
            i -= 1
        }while i > 0

        
        //在这两类循环里，我们都可以用continue来停止执行当前循环中的语句
        
    }
    
    
}









