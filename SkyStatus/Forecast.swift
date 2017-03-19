//
//  Forecast.swift
//  SkyStatus
//
//  Created by Dishant Kapadiya on 3/19/17.
//  Copyright © 2017 Dishant Kapadiya. All rights reserved.
//

import Foundation
import Alamofire

class Forecast {
    // swiftlint:disable variable_name
    var _date: String!
    var _weatherType: String!
    var _highTemp: String!
    var _lowTemp: String!
    // swiftlint:enable variable_name
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        return _date
    }
    
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    
    var highTemp: String {
        if _highTemp == nil {
            _highTemp = ""
        }
        return _highTemp
    }
    
    var lowTemp: String {
        if _lowTemp == nil {
            _lowTemp = ""
        }
        return _lowTemp
    }
    
    init(weatherDict: Dictionary<String, AnyObject>) {
        if let date = weatherDict["dt"] as? CLongLong {
            let unixConvertedDate = Date(timeIntervalSince1970: TimeInterval(date))
            let df = DateFormatter()
            df.dateFormat = "EEEE"
            self._date = df.string(from: unixConvertedDate)
        }
        if let main = weatherDict["main"] as?  Dictionary<String, AnyObject> {
            if let min = main["temp_min"] as? Double {
                let kelvinToFarenheitPreDivison = (min * (9/5) - 459.67)
                let kelvinToFarenheit = Double(round(10*kelvinToFarenheitPreDivison/10))
                self._lowTemp = "\(kelvinToFarenheit)"
            }
            if let max = main["temp_max"] as? Double {
                let kelvinToFarenheitPreDivison = (max * (9/5) - 459.67)
                let kelvinToFarenheit = Double(round(10*kelvinToFarenheitPreDivison/10))
                self._highTemp = "\(kelvinToFarenheit)"
            }
        }
        if let weather = weatherDict["weather"] as? [Dictionary<String, AnyObject>] {
            if let main = weather[0]["main"] as? String {
                self._weatherType = main
            }
        }
    }
}
