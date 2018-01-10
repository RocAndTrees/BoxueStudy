//
//  MockURLSession.swift
//  SkyTests
//
//  Created by pxl on 2018/1/10.
//  Copyright © 2018年 yunbo. All rights reserved.
//

import Foundation
@testable import Sky

/// 模拟
class MockURLSession: URLSessionProtocol {
    var sessionDataTask = MockURLSessionDataTask()
    
    func dataTask(with request: URLRequest, completionHandler: @escaping URLSessionProtocol.dataTaskHandler) -> URLSessionDataTaskProtocol {
        return sessionDataTask
    }
}
