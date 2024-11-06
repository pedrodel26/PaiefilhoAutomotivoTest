//
//  HomeView.swift
//  PaiefilhoAutomotivo
//
//  Created by Pedro Delmondes  on 27/05/2024.
//

import SwiftUI

struct HomeView: View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var showSplash = true
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.black.opacity(0.4)
                    .ignoresSafeArea()
                
//                if showSplash {
//                    SplashScreenView()
//                        .transition(.opacity)
//                        .animation(
//                            .easeOut(duration: 1.5))
//                } else {
////                    HomeView()
//                }
                
                VStack {
                    Image("automotivo")
                        .resizable()
                        .scaledToFit()
                        .padding()
                    
                    Text("Login")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .padding()
                
                    
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                        .fill(Color.gray)
                                        .stroke(Color.orange, lineWidth: 1)
                                )
                        
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                        .fill(Color.gray)
                                        .stroke(Color.orange, lineWidth: 1)
                                )
                        
                    
                    Text("Esqueceu a senha?")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.trailing)
                        .frame(height: 35)
                    
                    Button("Login") {
                        //
                    }
                    .foregroundStyle(.white)
                    .frame(width: 300, height: 50)
                    .background(.orange)
                    .cornerRadius(10)
                    
                    Spacer()
                    
                    NavigationLink {
                        RegistrationView()
                    } label: {
                        HStack(spacing: 8) {
                            Text("Ainda não possui um login?")
                            Text("Cadastre-se")
                                .bold()
                        }
                        .font(.system(size: 16))
                        .foregroundStyle(.orange)
                    }

                }
                .padding()
            }
//            .onAppear {
//                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
//                    withAnimation {
//                        self.showSplash = false
//                    }
                }
            }
//            .navigationBarBackButtonHidden(true)
        }

#Preview {
    HomeView()
}
