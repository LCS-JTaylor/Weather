//
//  WeatherViewModel.swift
//  Weather
//
//  Created by Russell Gordon on 2021-09-30.
//

import Foundation

class WeatherViewModel {
    
    // A list of predictions
    @Published var sessions: [Prediction] = []
    
    // Given question, provide weather
    func giveWeatherTo(givenTemperature: Double, givenFeel: String, givenCondition: WeatherCondition) -> String {
        
        // Start a new session
        var currentSession = Prediction(temperature: givenTemperature, feel: givenFeel, condition: givenCondition)
        currentSession.temperature = givenTemperature
        currentSession.feel = givenFeel
        currentSession.condition = givenCondition
        
        // Change condition and temperature to strings
        let temperatureString = String(currentSession.temperature)
        let conditionString = String(currentSession.condition.description)
        
        let allString = temperatureString + conditionString + currentSession.feel
        // Append
        sessions.append(currentSession)
        
        // Return
        return allString
    }
}

