//
//  URLSessionProtocol.swift
//  Sky
//
//  Created by pxl on 2018/1/8.
//  Copyright © 2018年 yunbo. All rights reserved.
//

import Foundation

protocol URLSessionProtocol {
    typealias dataTaskHandler = (Data?, URLResponse?, Error?) -> Void
    
    func dataTask(with request: URLRequest,
        completionHandler: @escaping dataTaskHandler)
        -> URLSessionDataTaskProtocol
}


