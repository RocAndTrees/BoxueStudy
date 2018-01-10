//
//  URLSession.swift
//  Sky
//
//  Created by pxl on 2018/1/10.
//  Copyright © 2018年 yunbo. All rights reserved.
//

import Foundation

extension URLSession: URLSessionProtocol {
    func dataTask(with request: URLRequest, completionHandler: @escaping URLSessionProtocol.dataTaskHandler) -> URLSessionDataTaskProtocol {
        return dataTask(with: request, completionHandler: completionHandler) as URLSessionDataTask as URLSessionDataTaskProtocol
    }
}
