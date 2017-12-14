
//
//  WeatherDataManager.swift
//  Sky
//
//  Created by pxl on 2017/12/7.
//  Copyright © 2017年 yunbo. All rights reserved.
//

import Foundation

enum DataManagerError: Error {
    case failedRequest
    case invalidResponse
    case unknown
}

final class WeatherDataManager {
    internal let baseURL: URL
    internal let urlSession: URLSession
    internal init(baseURL: URL, urlSession: URLSession) {
        self.baseURL = baseURL
        self.urlSession = urlSession
    }
    //静态对象（单利？）
    static let shared = WeatherDataManager(baseURL: API.authenticatedUrl, urlSession: URLSession.shared)
    //闭包 escaping 外部访问
    typealias CompletionHandler = (WeatherData?, DataManagerError?) -> Void

    func weatherDataAt(latitude: Double,
                       longitude: Double,
                       completion: @escaping CompletionHandler) {
        // 1. Concatenate the URL
        let url = baseURL.appendingPathComponent("\(latitude), \(longitude)")
        var request = URLRequest(url: url)
        
        // 2. Set HTTP header
        request.setValue("application/json",
                         forHTTPHeaderField: "Content-Type")
        request.httpMethod = "GET"
        
        // 3. Launch the request
        self.urlSession.dataTask(with: request,
                                   completionHandler: {
                                    (data, response, error) in
                                    DispatchQueue.main.async {
                                        self.didFinishGettingWeatherData(
                                            data: data,
                                            response: response,
                                            error: error,
                                            completion: completion)
                                    }
        }).resume()

    }
    
    func didFinishGettingWeatherData(
        data: Data?,
        response: URLResponse?,
        error: Error?,
        completion: CompletionHandler) {
        if let _ = error {
            completion(nil, .failedRequest)
        }
        else if let data = data,
            let response = response as? HTTPURLResponse {
            if response.statusCode == 200 {
                do {
                    let weatherData =
                        try JSONDecoder().decode(WeatherData.self, from: data)
                    completion(weatherData, nil)
                }
                catch {
                    completion(nil, .invalidResponse)
                }
            }
            else {
                completion(nil, .failedRequest)
            }
        }
        else {
            completion(nil, .unknown)
        }
    }
}

