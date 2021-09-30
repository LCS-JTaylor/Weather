//
//  main.swift
//  Weather
//
//  Created by Russell Gordon on 2021-09-30.
//

import Foundation

while true {
    
    print("Would you like to know the weather? Y for yes, N for no:")
    
    let response = readLine()!
    
    if response == "Y"{
        // Generate a weather prediction
        let prediction = WeatherPredictionGenerator.getPrediction()
        // Show the prediction
        print("Current conditions are \(prediction.condition.description.lowercased()) with a temperature of \(String(format: "%.1f", arguments: [prediction.temperature])) °C.")
        print("That's \(prediction.feel.lowercased())!")

    } else {
        exit(0)
    }
}
