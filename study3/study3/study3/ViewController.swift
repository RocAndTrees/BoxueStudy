//
//  ViewController.swift
//  study3
//
//  Created by pxl on 2017/6/8.
//  Copyright © 2017年 pxl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        
//        JudgmentsLoops_1().nume2()
        let pageControl = UIPageControl(frame: CGRect(x: 100, y: 200, width: 100, height: 20))
        pageControl.backgroundColor = UIColor.red
        pageControl.size(forNumberOfPages: 3)
        pageControl.numberOfPages = 3
        pageControl.currentPage = 2
        //添加点击事件
        self.view.addSubview(pageControl)
        
    }


    
    
    

}

