//
//  WeatherDataManagerTest.swift
//  SkyTests
//
//  Created by pxl on 2017/12/7.
//  Copyright © 2017年 yunbo. All rights reserved.
//

import XCTest
@testable import Sky

class WeatherDataManagerTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
   
    func test_weatherDataAt_starts_the_session() {
        let session = MockURLSession()
        let dataTask = MockURLSessionDataTask()
        
        session.sessionDataTask = dataTask
        
        let manager = WeatherDataManager(
            baseURL: URL(string: "https://darksky.net")!,
            urlSession: session)
        
        manager.weatherDataAt(latitude: 52, longitude: 100, completion: { _, _ in })
        
        XCTAssert(session.sessionDataTask.isResumeCalled)
    }
    
}
