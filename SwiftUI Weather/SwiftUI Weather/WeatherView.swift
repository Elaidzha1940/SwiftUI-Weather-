//  /*
//
//  Project: SwiftUIWeather
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 07.08.2022
//
//  */

import SwiftUI

struct WeatherView: View {
    @State private var isNight = false
    
    var body: some View {
        
        ZStack {
            Color(.blue)
            BackroundView(isNight: isNight)
            
            VStack {
                CityTextView(cityName: "Kyoto, Japan")
                
                MainWeatherStatusView(imageName: isNight
                                      ? "cloud.moon.fill" : "cloud.sun.fill",
                                      temurature: 56)
                .padding(.bottom, 40)
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
                    WeatherButton(title: "Change Day Time",
                                  textColor: isNight ? .gray : .white,
                                  backroundColor: isNight ? .black : .blue)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    WeatherView()
}

struct BackroundView: View {
    var isNight: Bool
    
    var body: some View {
//        LinearGradient(gradient:
//                        Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : .white]),
//                       startPoint: .topLeading,
//                       endPoint: .bottomTrailing)
//        .ignoresSafeArea()
        ContainerRelativeShape()
            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
            .ignoresSafeArea()
    }
}

struct CityTextView: View {
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 35, weight: .medium, design: .monospaced))
            .foregroundColor(.white)
            .padding(20)
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
                .frame(width: 160, height: 160)
            
            Text("\(temurature)°")
                .font(.system(size: 60, weight: .medium, design: .monospaced))
                .foregroundColor(.white)
        }
        
        .padding(.bottom, 50)
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
                .symbolRenderingMode(.multicolor)
                .resizable()
            //.foregroundStyle(.brown)
            //.foregroundStyle(.orange, .red, .green)
                .aspectRatio(contentMode: .fit)
                .frame(width: 35, height: 35)
            
            Text("\(tempurature)°")
                .font(.system(size: 28, weight: .medium, design: .monospaced))
                .foregroundColor(.white)
        }
    }
}


