//
//  RegistrationView.swift
//  PaiefilhoAutomotivo
//
//  Created by Pedro Delmondes  on 29/05/2024.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var email = ""
    @State private var fullname = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var showProfileView = false
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                Color.black.opacity(0.4)
                    .ignoresSafeArea()
                VStack {
                    Image("automotivo")
                        .resizable()
                        .scaledToFit()
                        .padding()
                    
                    //            Spacer()
                    
                    TextField("Email", text: $email)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(18)
                        .textInputAutocapitalization(.none)
                    
                    
                    TextField("Nome Completo", text: $fullname)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(18)
                    
                    SecureField("Senha", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(18)
                    
                    SecureField("Confirme senha", text: $confirmPassword)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(18)
                    
                    Button(action: {
                        showProfileView = true
                    }, label: {
                        Text("Login")
                            .foregroundStyle(.white)
                            .frame(width: 300, height: 50)
                            .background(.orange)
                            .cornerRadius(18)
                    })
                    .navigationBarBackButtonHidden(true)
                    .navigationDestination(isPresented: $showProfileView) {
                        ProfileView()
                        
                    }
                    .navigationBarBackButtonHidden(true)
                }
            }
        }
    }
}

struct PaymentScreen: View {
    var body: some View {
        ZStack {
            Color.blue.opacity(0.5)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    RegistrationView()
}
