//
//  Configuration.swift
//  Sky
//
//  Created by pxl on 2017/12/5.
//  Copyright © 2017年 yunbo. All rights reserved.
//

import Foundation

struct API {
    static let key = "a977c856652b6300962a1fd405bd2e0a"
    static let baseUrl = URL(string: "https://api.darksky.net/forecast")!
    static let authenticatedUrl = baseUrl.appendingPathComponent(key)
}
