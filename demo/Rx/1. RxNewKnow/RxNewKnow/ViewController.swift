//
//  ViewController.swift
//  RxNewKnow
//
//  Created by pxl on 2018/1/3.
//  Copyright © 2018年 lin. All rights reserved.
//

import RxSwift
import UIKit

class ViewController: UIViewController {
    //重点： observable 、 operators
    // 1. 订阅才会调用的observable 2. 创建就会调用的observable
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        Observable.of("1", "2", "3", "4", "5", "6", "7", "8", "9")
        
        let evenNumberObservable = Observable.from(["1", "2", "3", "4", "5", "6", "7", "8", "9"]).map{ Int($0)}
            .filter {
                if let item = $0, item % 2 == 0 {
                    print(item);
                    return true
                }
                
                return false
        }
        
        _ = evenNumberObservable.subscribe { event in
            print("Event: \(event)")
        }
        
    }
    
    
    
}


extension ViewController: UITextFieldDelegate {
    
    public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if let n = Int(string) {
            
            if n % 2 == 0 {
                print("Even: \(n)")
            }
            
        }
        return true;
    }
    
}

