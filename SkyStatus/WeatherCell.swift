//
//  WeatherCell.swift
//  SkyStatus
//
//  Created by Dishant Kapadiya on 3/19/17.
//  Copyright © 2017 Dishant Kapadiya. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {

    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var highTempLabel: UILabel!
    @IBOutlet weak var weatherTypeLabel: UILabel!
    @IBOutlet weak var lowTempLabel: UILabel!
    
    func configureCell(forecast: Forecast) {
        lowTempLabel.text = "\(forecast.lowTemp)"
        highTempLabel.text = "\(forecast.highTemp)"
        weatherTypeLabel.text = forecast.weatherType
        dayLabel.text = forecast.date
        weatherIcon.image = UIImage(named: forecast.weatherType)
    }

}
