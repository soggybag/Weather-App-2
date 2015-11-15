//
//  ViewController.swift
//  Weather-App-2
//
//  Created by mitchell hudson on 11/12/15.
//  Copyright © 2015 mitchell hudson. All rights reserved.
//

// TODO: Clear initial screen, show button to load weather.
// TODO: Save weather location in NSUserDefaults
// TODO: Add SMS
// TODO: Add email
// TODO: Tweet Weather
// TODO: Use Camera to set background Image
// TODO: Email Image of Weather

// Get location for weather

import UIKit
import CoreLocation // 1 import CoreLocation

// 4 Add Persmission Keys to info plist 
// “NSLocationWhenInUseUsageDescription” or “NSLocationAlwaysUsageDescription”

// 2 Add the delegate protocol
class ViewController: UIViewController, CLLocationManagerDelegate, WeatherServiceDelegate {
    
    // 3 Make a location manager
    let locationManager = CLLocationManager()
    // Make an instance of WeatherService with your OpenWeatherMap ID.
    var weatherService = WeatherService(appid: "2854c5771899ff92cd962dd7ad58e7b0")
    
    
    
    
    // MARK: IBOutlets
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var windLabel: UILabel!
    @IBOutlet weak var cityButton: UIButton!
    
    
    
    // MARK: IBActions
    
    @IBAction func cityButtonTapped(sender: AnyObject) {
        print("City button")
        openSetWeatherAlert()
    }
    
    
    
    func openSetWeatherAlert() {
        let alert = UIAlertController(title: "Get Weather", message: "Enter City, or use your location!", preferredStyle: .Alert)
        let cancel = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
        let ok = UIAlertAction(title: "OK", style: .Default) { (action: UIAlertAction) -> Void in
            
            let textField = alert.textFields![0]
            let city = textField.text
            self.weatherService.getWeatherForCity(city!)
        }
        let location = UIAlertAction(title: "Use Location", style: .Default) { (action: UIAlertAction) -> Void in
            //
            self.getGPSLocation()
        }
        
        alert.addTextFieldWithConfigurationHandler { (textField: UITextField) -> Void in
            textField.placeholder = "City Name, Country"
        }
        
        alert.addAction(cancel)
        alert.addAction(ok)
        alert.addAction(location)
        
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    
    
    // MARK: Location 
    
    func getGPSLocation() {
        print("Starting location Manager")
        locationManager.startUpdatingLocation()
    }
    
    // 6 Add delegate methods
    func locationManager(manager: CLLocationManager, didUpdateToLocation newLocation: CLLocation, fromLocation oldLocation: CLLocation) {
        // Get weather for location
        print("Did update To Location")
        print(newLocation)
        locationManager.stopUpdatingLocation()
    }
    
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("Did update locations")
        print(locations)
        self.weatherService.getWeatherForLocation(locations[0])
        locationManager.stopUpdatingLocation()
    }
    
    
    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        print("location error \(error) \(error.userInfo)")
    }
    
    
    
    
    // MARK: WeatherService Delegate methods
    
    func weatherErrorWithMessage(message: String) {
        let alert = UIAlertController(title: "Weather Service Error", message: message, preferredStyle: .Alert)
        let ok = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alert.addAction(ok)
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    func setWeather(weather: Weather) {
        let numberFormatter = NSNumberFormatter()
        self.descriptionLabel.text = weather.description
        
        self.tempLabel.text = numberFormatter.stringFromNumber(weather.tempF)!
        self.humidityLabel.text = "Humidity: \(numberFormatter.stringFromNumber(weather.humidity)!)%"
        self.windLabel.text = "Wind: \(numberFormatter.stringFromNumber(weather.windSpeed)!)mph"
        self.iconImageView.image = UIImage(named: weather.icon)
        print("icon:"+weather.icon)
        self.cityButton.setTitle(weather.cityName, forState: .Normal)
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.weatherService.delegate = self
        
        
        // 5 Set delegate and authorization
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

