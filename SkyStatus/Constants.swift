//
//  Constants.swift
//  SkyStatus
//
//  Created by Dishant Kapadiya on 3/18/17.
//  Copyright © 2017 Dishant Kapadiya. All rights reserved.
//

import Foundation

// swiftlint:disable variable_name
let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&APPID="
let API_KEY = "1fe4f1c5bb7a3d9f574d95337f6f0723"
let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)\(Location.sharedInstance.latitude!)\(LONGITUDE)\(Location.sharedInstance.longitute!)\(APP_ID)\(API_KEY)"
let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitute!)&APPID=1fe4f1c5bb7a3d9f574d95337f6f0723"
// swiftlint:enable variable_name
typealias DownloadComplete = () -> ()
