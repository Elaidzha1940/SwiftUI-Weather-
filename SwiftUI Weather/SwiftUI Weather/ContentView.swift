//
//  ContentView.swift
//  SwiftUI Weather
//
//  Created by Elaidzha Shchukin on 07.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        
        ZStack {
            Color(.blue)
            BackroundView(isNight: $isNight)
            
            VStack {
                CityTextView(cityName: "Bali")
                
                
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                                      temurature: 74)
              ///  Spacer()
                
                HStack(spacing: 20) {
                    
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "cloud.sun.fill",
                                   temurature: 74)
                    
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "cloud.bolt.fill",
                                   temurature: 50)
                    
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "cloud.sun.bolt.fill",
                                   temurature: 68)
                    
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "cloud.sun.rain.fill",
                                   temurature: 58)
                    
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "wind",
                                   temurature: 53)
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
    var temurature: Int
    
    
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temurature)°")
                .font(.system(size: 28, weight: .medium))
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
            .font(.system(size: 32, weight: .medium, design: .default))
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
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
            
        }
    
        .padding(.bottom, 40)
        
        
    }
}

