//
//  WeatherServiceDelegate.swift
//  Weather-App-2
//
//  Created by mitchell hudson on 11/13/15.
//  Copyright © 2015 mitchell hudson. All rights reserved.
//


/*
 
 This protocol defines two methods used by the WeatherService class to share
 weather data with it's delegate. 
 
 setWeather - returns a Weather object
 weatherErrorWithMessage - returns an error message
 
 */


import UIKit

protocol WeatherServiceDelegate {
    func setWeather(weather: Weather)
    func weatherErrorWithMessage(message: String)
}