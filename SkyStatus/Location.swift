//
//  Location.swift
//  SkyStatus
//
//  Created by Dishant Kapadiya on 3/19/17.
//  Copyright © 2017 Dishant Kapadiya. All rights reserved.
//

import CoreLocation

class Location{
    static var sharedInstance = Location()
    private init() {}
    var latitude: Double!
    var longitute: Double!
}
