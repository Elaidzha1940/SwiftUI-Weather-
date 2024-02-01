//  /*
//
//  Project: SwiftUIWeather
//  File: WeatherButton.swift
//  Created by: Elaidzha Shchukin
//  Date: 07.08.2022
//
//  */

import SwiftUI

struct WeatherButton: View {
    var title: String
    var textColor: Color
    var backroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .monospaced))
            .cornerRadius(10)
    }
}
