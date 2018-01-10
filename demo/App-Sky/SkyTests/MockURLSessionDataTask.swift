//
//  MockURLSessionDataTask.swift
//  SkyTests
//
//  Created by pxl on 2018/1/10.
//  Copyright © 2018年 yunbo. All rights reserved.
//

import Foundation
@testable import Sky

class MockURLSessionDataTask: URLSessionDataTaskProtocol {
    private (set) var isResumeCalled = false
    
    func resume() {
        self.isResumeCalled = true
    }
}
