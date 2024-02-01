//  /*
//
//  Project: SwiftUIWeather
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 07.08.2022
//
//  */

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    
    var body: some View {
        
        ZStack {
            Color(.blue)
            BackroundView(isNight: $isNight)
            
            VStack {
                CityTextView(cityName: "Kyoto, Japan")
                
                MainWeatherStatusView(imageName: isNight
                                      ? "moon.stars.fill" : "cloud.sun.fill",
                                      temurature: 74)
                HStack(spacing: 22) {
                    
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "cloud.sun.fill",
                                   tempurature: 54)
                    
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "cloud.bolt.fill",
                                   tempurature: 50)
                    
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "cloud.sun.bolt.fill",
                                   tempurature: 68)
                    
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "cloud.sun.rain.fill",
                                   tempurature: 48)
                    
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "wind",
                                   tempurature: 42)
                }
                
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change DAy Time",
                                  textColor: .blue,
                                  backroundColor: .white)
                }
                
                Spacer()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var tempurature: Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .monospaced))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 35, height: 35)
            
            Text("\(tempurature)°")
                .font(.system(size: 28, weight: .medium, design: .monospaced))
                .foregroundColor(.white)
            
        }
    }
}

struct BackroundView: View {
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 35, weight: .medium, design: .monospaced))
            .foregroundColor(.white)
    }
}

struct MainWeatherStatusView: View {
    var imageName: String
    var temurature: Int
    
    var body: some View {
        
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temurature)°")
                .font(.system(size: 60, weight: .medium, design: .monospaced))
                .foregroundColor(.white)
            
        }
        
        .padding(.bottom, 40)
    }
}

