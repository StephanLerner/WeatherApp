//
//  ViewController.swift
//  WeatherApp
//
//  Created by Stephan Lerner on 19.10.16.
//  Copyright © 2016 Stephan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var weatherView: WeatherView!
    var weather: Weather!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        weather = Weather(weatherLocation: USER_LOCATION)
        weather.downloadWeatherDetails {
            self.weatherView.updateWeather(weather: self.weather)
        }
    }
}

