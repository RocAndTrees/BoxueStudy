//
//  WeatherData.swift
//  Sky
//
//  Created by pxl on 2017/12/5.
//  Copyright © 2017年 yunbo. All rights reserved.
//

import Foundation

struct WeatherData: Codable {
    let latitude: Double
    let longitude: Double
    let currently: CurrentWeather
    
    struct CurrentWeather: Codable {
        let time: Date
        let summary: String
        let icon: String
        let temperature: Double
        let humidity: Double
    }
}

