//
//  WeatherService.swift
//  Weather-App-Example
//
//  Created by mitchell hudson on 10/6/15.
//  Copyright © 2015 mitchell hudson. All rights reserved.
//


/* 

 The Weather Service class retrieves weather data from OpenWeatherMap.
 
 This class works with JSON using SwiftyJSON, following the OpenWeatherMap API.
 
*/

// TODO: Add an enum for error codes. 
// TODO: Use an enum for weather icons.


import UIKit
import CoreLocation

class WeatherService {
    // Set your appid
    let appid: String
    var delegate: WeatherServiceDelegate?
    
    /** Initial a WeatherService instance with your OpenWeatherMap app id. */
    init(appid: String) {
        self.appid = appid
    }
    
    /** Formats an API call to the OpenWeatherMap service. Pass in a CLLocation to retrieve weather data for that location.  */
    func getWeatherForLocation(location: CLLocation) {
        let lat = location.coordinate.latitude
        let lon = location.coordinate.longitude
        
        // Put together a URL With lat and lon
        let path = "http://api.openweathermap.org/data/2.5/weather?lat=\(lat)&lon=\(lon)&appid=\(appid)"
        
        getWeatherWithPath(path)
    }
    
    
    /** Formats an API call to the OpenWeatherMap service. Pass in a string in the form City Name, Country. */
    func getWeatherForCity(city: String) {
        if let cityEscaped = city.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLHostAllowedCharacterSet()) {
            let path = "http://api.openweathermap.org/data/2.5/weather?q=\(cityEscaped)&appid=\(appid)"
            
            getWeatherWithPath(path)
        }
        
       
    }
    
    /** This Method retrieves weather data from an API path. */
    func getWeatherWithPath(path: String) {
        // Create a URL, Session, and Data task.
        let url = NSURL(string: path)
        let session = NSURLSession.sharedSession()
        let task = session.dataTaskWithURL(url!) {
            (data: NSData?, response: NSURLResponse?, error: NSError?) -> Void in
            
            // Handle an HTTP status response.
            if let httpResponse = response as? NSHTTPURLResponse {
                print("*******")
                print(httpResponse.statusCode)
                print("*******")
            }
            
            // Check for nil data
            let json = JSON(data: data!)
            // print(json)
            if json == nil {
                return
            }
            
            // Get the cod code: 401 Unauthorized, 404 file not found, 200 Ok!
            // ! OpenWeatherMap returns 404 as a string but 401 and 200 are Int!?
            var status = 0
            
            if let cod = json["cod"].int {
                status = cod
            } else if let cod = json["cod"].string {
                status = Int(cod)!
            }
            
            // Check status
            // print("Weather status code:\(status)")
            if status == 200 {
                // everything is ok get the weather data from the json data.
                let _ = json["coord"]["lon"].double
                let _ = json["coord"]["lat"].double
                let temp = json["main"]["temp"].double
                let tempMin = json["main"]["temp_min"].double
                let tempMax = json["main"]["temp_max"].double
                let humidity = json["main"]["humidity"].double
                let pressure = json["main"]["pressure"].double
                let name = json["name"].string
                let desc = json["weather"][0]["description"].string
                let icon = json["weather"][0]["icon"].string
                let clouds = json["clouds"]["all"].double
                let windSpeed = json["wind"]["speed"].double
                
                // Create a Weather struct to pass to the delegate.
                let weather = Weather(
                    cityName: name!,
                    temp: temp!,
                    description: desc!,
                    icon: icon!,
                    clouds: clouds!,
                    tempMin: tempMin!,
                    tempMax: tempMax!,
                    humidity: humidity!,
                    pressure: pressure!,
                    windSpeed: windSpeed!
                )
                
                // Check the delegate has been set.
                if self.delegate != nil {
                    // The Session runs on a background thread move back to the main queue
                    // and pass the weather to our delegate.
                    dispatch_async(dispatch_get_main_queue(), { () -> Void in
                        self.delegate?.setWeather(weather)
                    })
                }

            } else if status == 404 {
                // City not found
                if self.delegate != nil {
                    dispatch_async(dispatch_get_main_queue(), { () -> Void in
                        self.delegate?.weatherErrorWithMessage("City not found")
                    })
                }
                
            } else {
                // Some other here?
                if self.delegate != nil {
                    dispatch_async(dispatch_get_main_queue(), { () -> Void in
                        self.delegate?.weatherErrorWithMessage("Something went wrong?")
                    })
                }
                
            }
            
        }
        
        // *** This starts the data session *** 
        task.resume()
    }
    
}
