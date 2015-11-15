//
//  WeatherServiceDelegate.swift
//  Weather-App-2
//
//  Created by mitchell hudson on 11/13/15.
//  Copyright © 2015 mitchell hudson. All rights reserved.
//

import UIKit

protocol WeatherServiceDelegate {
    func setWeather(weather: Weather)
    func weatherErrorWithMessage(message: String)
}