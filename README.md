# Weather-App Xcode 7 Swift 2

This imple app displays weather data from [OpenWeatherMap.org](http://openweathermap.org). You can build this project yourself following the videos here on youtube [here](http://openweathermap.org).

The app has the following features: 
* Weather information for a city location.
* Image representing the weather condition.
* Current temperature 
* Humidity
* Wind speed

#What you will learn

By following the video tutorials and building this app on your own you will learn how to build a simple yet sophisticated app that you can publish to the iTunes store. 

Techniques covered in these tutorials:

* Storyboard, and auto layout - this is the system used to create the user interface in Xcode. 
* IBOutlets and IBActions - these are the connections between elements created in storyboard and the code you write. 
* Swift Basics - Swift is a new programming language created by Apple. This entire tutorial is written in Swift. 
* Cocoa Touch - Cocoa Touch is the framework that underlies iOS. The framework is the code that creates all of the underlying systems. 
* View Controllers - A view controller represents a screen of information. This is a fundemental building block of iOS development. 
* Design Patterns - These are ways of arranging code to solve problems and accomplish goals. This tutorial talks about some of the design patterns user in Cocoa Touch. You will build components using the MVC and Delegate pattern. 
* NSURLSession - use this to request data from the internet. In this case you will pass the city name to a service, and receieve the weather data. 
* Formatting Numbers - Using NSNumberFormatter to format numeric values for their best display in oyur app. 
* Error handling - Making connections to services over the internet leaves plenty of opportunity for errors. You will learn how to handle different types of errors that might occur. 
* Working with JSON - JSON is a standard format for passing data over an internet connection. You will learn how to load JSON formatted data using SwiftyJSON.

## Bonus! 

These example files also include a bonus features for your exploration. This includes: 

* CoreLocation
* UIImagePickerController

#Videos 
1. [Create a new project and setup storyboard](https://www.youtube.com/watch?v=VSDMxdsYHq8&list=PLoN_ejT35AEjBQ33-L8h2IwG11amXssGk) - Here you will create a project and add labels, and add some constraints fit the elements to the view. Then create IBOulets and IBActions for elements created in storyboard. 
2. [Create an Alert action to input cityname](https://www.youtube.com/watch?v=jiSirqZIy5k&index=2&list=PLoN_ejT35AEjBQ33-L8h2IwG11amXssGk). An alert controller (UIAlertController) displays a popup dialog box. In this video we add a text field and some buttons to this to allow the input of a city name. 
3. [Add a textfield to the alert controller](https://www.youtube.com/watch?v=Ia-eztihAYU&index=3&list=PLoN_ejT35AEjBQ33-L8h2IwG11amXssGk). This takes a look at closures. 
4. [Creating the weather service class](https://www.youtube.com/watch?v=mKMNi7vSZdw&list=PLoN_ejT35AEjBQ33-L8h2IwG11amXssGk&index=4). The goal in this video is a class to manage weather data. This discussion talks about the delegate pattern. 
5. [Weather Struct](https://www.youtube.com/watch?v=dZqrhbfRvhc&index=5&list=PLoN_ejT35AEjBQ33-L8h2IwG11amXssGk). The app needs a way to pass the weather data around. A struct works well for this.
6. [OpenWeatherMap](https://www.youtube.com/watch?v=YPFrQkZpIKw&list=PLoN_ejT35AEjBQ33-L8h2IwG11amXssGk&index=6). Take a quick tour of the openweathermap.org site, and look at their API. 
7. [Authorizing the app for HTTP](https://www.youtube.com/watch?v=AoYTuhWZFqM&index=7&list=PLoN_ejT35AEjBQ33-L8h2IwG11amXssGk). Here we set the security options to allow the app to access HTTP data from OpenWeatherMap. 
8. [Working with JSON and SwiftyJSON](https://www.youtube.com/watch?v=LvoUA0-kBqM&list=PLoN_ejT35AEjBQ33-L8h2IwG11amXssGk&index=8). SwiftyJSON is a helper class that simplifies working with JSON. 
9. [Collecting the data and sending it back to the Main thread](https://www.youtube.com/watch?v=LRtoLCwaIm0&list=PLoN_ejT35AEjBQ33-L8h2IwG11amXssGk&index=9). Here we take a look at the data return as JSON, and how to access the pieces we need. 
10. [Passing the city name to WeatherService](https://www.youtube.com/watch?v=-l17cRPSYUA&index=10&list=PLoN_ejT35AEjBQ33-L8h2IwG11amXssGk). Here you will make it possible to get the weather for any city.
11. [Set the City name on the button](https://www.youtube.com/watch?v=MrVAv-Cv4Uo&list=PLoN_ejT35AEjBQ33-L8h2IwG11amXssGk&index=11). Changing the text of the button to match the name of the city.
12. [Working with Weather icons](https://www.youtube.com/watch?v=0EEk4ctTBZM&index=12&list=PLoN_ejT35AEjBQ33-L8h2IwG11amXssGk). Now it's time to display images matching the weather condition.
13. [Working with other weather properties](https://www.youtube.com/watch?v=axn8wFtDPXE&index=13&list=PLoN_ejT35AEjBQ33-L8h2IwG11amXssGk). Here you will learn to expand the range of weather properties your app displays.
14. [Using your App ID and response code from openweatherma.org](https://www.youtube.com/watch?v=F53lSSm4jWQ&index=14&list=PLoN_ejT35AEjBQ33-L8h2IwG11amXssGk). Looking at status codes and HTTP responses for possible errors.
15. [Error messages from the weather service](https://www.youtube.com/watch?v=fbRWlYaq4Wo&list=PLoN_ejT35AEjBQ33-L8h2IwG11amXssGk&index=15). Even when your app is working correctly, its still possible to get errors, your app needs to handle these.
16. [Handling HTTP responses](https://www.youtube.com/watch?v=wtfy2dzaWT4&list=PLoN_ejT35AEjBQ33-L8h2IwG11amXssGk&index=16). Even when the app is working well, there can be a problem with the internet connection.
17. [JSON Status code](https://www.youtube.com/watch?v=9jR_ZrszuKs&list=PLoN_ejT35AEjBQ33-L8h2IwG11amXssGk&index=17). Handling the status code in JSON.
18. [Working with the status code in the app](https://www.youtube.com/watch?v=zdukON7HH4I&list=PLoN_ejT35AEjBQ33-L8h2IwG11amXssGk&index=18).
19. [Formatting numbers](https://www.youtube.com/watch?v=yWzT4BGIKmk&list=PLoN_ejT35AEjBQ33-L8h2IwG11amXssGk&index=19).You app needs to display numbers, and you need to format them to best display the information. NSNumberFormatter is tool for the job. 
20. [Get the weather via GPS location](https://www.youtube.com/watch?v=_jWz7bbVDxY&index=20&list=PLoN_ejT35AEjBQ33-L8h2IwG11amXssGk).We can also get the weather by using the phones GPS location.






























