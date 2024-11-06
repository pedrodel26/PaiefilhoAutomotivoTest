//
//  SwiftUIView.swift
//  PaiefilhoAutomotivo
//
//  Created by Pedro Delmondes  on 04/11/2024.
//

import SwiftUI

struct SwiftUIView: View {
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .accent]),
                           startPoint: .topTrailing,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            VStack {
                Image(systemName: "location.fill")
                    .foregroundStyle(.white)
                    .padding(.bottom, 6)
                
                Text("London,UK")
                    .font(.system(size: 32, weight: .semibold, design: .monospaced))
                    .foregroundStyle(.white)
                
                VStack(spacing: 12) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 190, height: 160)
                        
                    
                    Text("76°")
                        .font(.system(size: 74, weight: .medium))
                        .foregroundStyle(.white)
                }
                
                HStack(spacing: 32) {
                    WeatherDayView(daysOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 77)
                    
                    WeatherDayView(daysOfWeek: "WED",
                                   imageName: "cloud.rain.fill",
                                   temperature: 67)
                    
                    WeatherDayView(daysOfWeek: "THU",
                                   imageName: "sun.max.fill",
                                   temperature: 80)
                    
                    WeatherDayView(daysOfWeek: "FRI",
                                   imageName: "cloud.sun.fill",
                                   temperature: 74)
                    
                    WeatherDayView(daysOfWeek: "SAT",
                                   imageName: "snow",
                                   temperature: 75)
                    
                }
                .foregroundStyle(.white)
                .padding(.bottom, 12)
                .padding()
                
                Spacer()
                
                Button {
                    print("tapped")
                } label: {
                    Text("Click Here")
                        .foregroundStyle(.accent)
                        .font(.system(size: 22, weight: .bold, design: .default))
                        .frame(width: 200, height: 50)
                        .background(.white)
                        .clipShape(.rect(cornerRadius: 12))
                }
                
                Spacer()

            }
        }
    }
}

#Preview {
    SwiftUIView()
}

struct WeatherDayView: View {
    var daysOfWeek: String
    var imageName: String
    var temperature: Int
     
    var body: some View {
        VStack(spacing: 8) {
            Text(daysOfWeek)
            Image(systemName: imageName)
                .renderingMode(.original)
            Text("\(temperature)°")
                .font(.system(size: 22))
        }
        .font(.system(size: 18))
        .fontWeight(.semibold)
    }
}

//struct ButtonMainView: View {
//    var body: some View {
//        
//    }
//}
