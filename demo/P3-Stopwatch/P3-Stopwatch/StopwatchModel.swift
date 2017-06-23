
//
//  StopwatchModel.swift
//  P3-Stopwatch
//
//  Created by pxl on 2017/6/23.
//  Copyright © 2017年 pxl. All rights reserved.
//

import UIKit

class StopwatchModel: NSObject {
    var counter: Double
    var timer: Timer
    
    override init() {
        counter = 0.0
        timer = Timer()
    }

}
