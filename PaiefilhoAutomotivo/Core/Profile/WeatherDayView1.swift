//
//  WeatherDayView1.swift
//  PaiefilhoAutomotivo
//
//  Created by Pedro Delmondes  on 04/11/2024.
//

import SwiftUI

struct WeatherDayView1: View {
    var body: some View {
    
        VStack {
            Text("TUE")
            Image(systemName: "cloud.sun.fill")
                .renderingMode(.original)
            Text("78°")
        }
        .background(Color(.gray))
    }
}

#Preview {
    WeatherDayView1()
}
