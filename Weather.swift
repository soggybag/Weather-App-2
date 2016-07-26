//
//  Weather.swift
//  Weather-App-Example
//
//  Created by mitchell hudson on 10/6/15.
//  Copyright © 2015 mitchell hudson. All rights reserved.
//


/* 
 
 This struct creates an object that represents the weather for a city.
 All of the properties here are values describing the weather with
 couple points of interest.

 icon, a string, holds the name of weather status. This names is supplied by OpenWeatherMap. 
 For a list of possible values see Icon List: http://openweathermap.org/weather-conditions
 
 temp, holds the temperature in Kelvin. 
 tempF and tempC are computed properties that return temp in Farenheit, and Celsius. 
 
 Note: tempMin, and tempMax are not as intersting as they sound, see the notes on these in 
 the OpenWeatherMap API. 
 
*/


import Foundation

struct Weather {
    let cityName: String
    let temp: Double
    let description: String
    let icon: String
    let clouds: Double
    
    let tempMin: Double
    let tempMax: Double
    
    let humidity: Double
    let pressure: Double
    
    let windSpeed: Double
    
    var tempC: Double {
        get {
            return temp - 273.15
        }
    }
    
    var tempF: Double {
        get {
            return tempC * 9/5 + 32
        }
    }
    
    var tempMinC: Double {
        get {
            return tempMin - 273.15
        }
    }
    
    var tempMaxC: Double {
        get {
            return tempMax  - 273.15
        }
    }
    
    
    var tempMinF: Double {
        get {
            return tempMinC * 9/5 + 32
        }
    }
    
    var tempMaxF: Double {
        get {
            return tempMaxC * 9/5 + 32
        }
    }
    
    
    init(cityName: String,
        temp: Double,
        description: String,
        icon: String,
        clouds: Double,
        tempMin: Double,
        tempMax: Double,
        humidity: Double,
        pressure: Double,
        windSpeed: Double) {
            
            self.cityName = cityName
            self.temp = temp
            self.description = description
            self.icon = icon
            self.clouds = clouds
            self.tempMin = tempMin
            self.tempMax = tempMax
            self.humidity = humidity
            self.pressure = pressure
            self.windSpeed = windSpeed
    }
    
}