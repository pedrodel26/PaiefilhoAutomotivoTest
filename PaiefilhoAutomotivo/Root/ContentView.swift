//
//  ContentView.swift
//  PaiefilhoAutomotivo
//
//  Created by Pedro Delmondes  on 25/03/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.black)
                
                VStack{
                    Image("automotivo")
                        .resizable()
                        .scaledToFit()
                }
                .padding()
                
            }
            .ignoresSafeArea()
            
        }
    }
}

#Preview {
    ContentView()
}
