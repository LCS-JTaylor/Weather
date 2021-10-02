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
    func giveWeatherTo() -> Prediction {
        
        // Start a new session
        var currentSession: Prediction
        
        // Get prediction
        currentSession = WeatherPredictionGenerator.getPrediction()
        
        // Append
        sessions.append(currentSession)
        
        // Return
        return currentSession
    }
}

