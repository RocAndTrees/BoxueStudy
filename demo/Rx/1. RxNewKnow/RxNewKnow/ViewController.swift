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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
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

