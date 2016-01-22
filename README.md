# Weather-App Xcode 7 Swift 2

This is a simple weather app that displays weather data from [OpenWeatherMap.org](http://openweathermap.org). These files 
follow the tutorial on youtube [here](http://openweathermap.org).

The app also displays an image representing the weather condition along with the temperature, and any other information you 
might want to include. 

#What you will learn

By following the video tutorials and building this app on your own you will learn how to build a simple yet sophisticated app, that you can publish to the iTunes store. Techniques covered here are:

* Storyboard, and auto layout - this is the system used to create the user interface in Xcode. 
* IBOutlets and IBActions - these are the connections between elements created graphically in storyboard, and the code you write. 
* Swift Basics - Swift is a new Language introduced by Apple. This project is built entirely in Swift, and should provide a good introduction to it. 
* Cocoa Touch - Cocoa Touch is the framework that underlies iOS. The framework is the code that creates all of the underlying systems that make it easy to add buttons, and images to the screen. 
* ViewControllers - a view controller represents a screen of information. This is a fundemental building block of iOS development. 
* Design Patterns - these are ways of arranging code to solve problems and accomplish goals. The Cocoa Touch framework is built on design patterns. In this tutorial I talk about the built in design patterns. You will build components using the Singelton and Delegate pattern. 
* NSURLSession - use this to request data from the internet. In this case you will pass the city name to a service, and receieve the weather data. 

#Videos 
1. [Create a new project and setup storyboard](https://www.youtube.com/watch?v=VSDMxdsYHq8&list=PLoN_ejT35AEjBQ33-L8h2IwG11amXssGk) - Here you will create a project and add labels, and add some constraints fit the elements to the view. Then create IBOulets and IBActions for elements created in storyboard. 
2. [Create an Alert action to input cityname](https://www.youtube.com/watch?v=jiSirqZIy5k&index=2&list=PLoN_ejT35AEjBQ33-L8h2IwG11amXssGk). An alert controller (UIAlertController) displays a popup dialog box. In this video we add a text field and some buttons to this to allow the input of a city name. 
3. [Add a textfield to the alert controller](https://www.youtube.com/watch?v=Ia-eztihAYU&index=3&list=PLoN_ejT35AEjBQ33-L8h2IwG11amXssGk). This takes a look at closures. 
4. [Creating the weather service class](https://www.youtube.com/watch?v=mKMNi7vSZdw&list=PLoN_ejT35AEjBQ33-L8h2IwG11amXssGk&index=4). The goal in this video is a class to manage weather data. This discussion talks about the delegate pattern. 
5. [Weather Struct](https://www.youtube.com/watch?v=dZqrhbfRvhc&index=5&list=PLoN_ejT35AEjBQ33-L8h2IwG11amXssGk). The app needs a way to pass the weather data around. A struct works well for this.
6. [OpenWeatherMap](https://www.youtube.com/watch?v=YPFrQkZpIKw&list=PLoN_ejT35AEjBQ33-L8h2IwG11amXssGk&index=6). Take a quick tour of the openweathermap.org site, and look at their API. 
7. [Authorizing the app for HTTP](https://www.youtube.com/watch?v=AoYTuhWZFqM&index=7&list=PLoN_ejT35AEjBQ33-L8h2IwG11amXssGk). Here we set the security options to allow the app to access HTTP data from OpenWeatherMap. 
8. [Video description](https://www.youtube.com/watch?v=jiSirqZIy5k&index=8&list=PLoN_ejT35AEjBQ33-L8h2IwG11amXssGk)
9. [Video description](https://www.youtube.com/watch?v=jiSirqZIy5k&index=9&list=PLoN_ejT35AEjBQ33-L8h2IwG11amXssGk)
10. [Video description](https://www.youtube.com/watch?v=jiSirqZIy5k&index=10&list=PLoN_ejT35AEjBQ33-L8h2IwG11amXssGk)






