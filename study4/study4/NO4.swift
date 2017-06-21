
//
//  NO4.swift
//  study4
//
//  Created by pxl on 2017/6/11.
//  Copyright © 2017年 pxl. All rights reserved.
//  通过Local function捕获变量共享资源
//  在上一节，了解了Swift中local function可以捕获变量的特性之后，除了用捕获的变量保存状态，我们还可以用它来在多次调用之间共享资源，以提高程序的执行效率。在这一节，我们就通过归并排序的实现，来了解这个用法。



import UIKit

class NO4: NSObject {

}



extension Array where Element : Comparable {

    
//    mutating func mergeSort(_ begin: Index, _ end: Index) {
//        if (end - begin) > 1 {
//            let mid = (begin + end) / 2
//            
//            mergeSort(begin, mid)
//            mergeSort(mid, end)
//            
//            merge(begin, mid, end)
//        }
//    }
    
    mutating func mergeSort(_ begin: Index, _ end: Index) {
        // A shared storage across all recursive calls
        var tmp: [Element] = []
        tmp.reserveCapacity(count)
        
        func merge(_ begin: Int, _ mid: Int, _ end: Int) {
            // 1. Use the same shared storage
            tmp.removeAll(keepingCapacity: true)
            
            // The same as before
            var i = begin
            var j = mid
            // ...
            // Omit for simplicity
        }
        
        if ((end - begin) > 1) {
            let mid = (begin + end) / 2
            
            mergeSort(begin, mid)
            mergeSort(mid, end)
            
            merge(begin, mid, end)
        }
    }
    
    

    private mutating func merge(_ begin: Index, _ mid: Index, _ end: Index) {
        // 1. The result
        var tmp: [Element] = []
        
        // 2. Fetch the smaller one from the two piles
        var i = begin
        var j = mid
        
        while i != mid && j != end {
            if self[i] < self[j] {
                tmp.append(self[i])
                i += 1
            }
            else {
                tmp.append(self[j])
                j += 1
            }
        }
        
        // 3. Append the remaining
        tmp.append(contentsOf: self[i ..< mid])
        tmp.append(contentsOf: self[j ..< end])
        
        // 4. Update self
        replaceSubrange(begin..<end, with: tmp)
    }

}
