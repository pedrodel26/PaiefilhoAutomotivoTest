//
//  SplashScreenView.swift
//  PaiefilhoAutomotivo
//
//  Created by Pedro Delmondes  on 01/06/2024.
//

import SwiftUI

struct SplashScreenView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color(.black).ignoresSafeArea()
            
            VStack{
                Image("automotivo")
                    .resizable()
                    .scaledToFit()
                
                VStack {
                    Button(action: {
                        dismiss()
                    }, label: {
                        Text("Entre")
                    })
                    .font(.custom("_", size: 24))
                    .fontWeight(.semibold)
                    .frame(width: 200, height: 60)
                    .background(.gray)
                    .foregroundStyle(.orange)
                    .cornerRadius(30)
                    .shadow(radius: 0.5)
                }
                
                NavigationLink {
                    HomeView()
                } label: {
                    HStack {
                        Text("Conheça a Pai e Filho!")
                            .foregroundStyle(.orange)
                            .bold()
                    }
                    .frame(width: 220, height: 60)
                }
            }
            .padding()
        }
         
    }
}

#Preview {
    SplashScreenView()
}
