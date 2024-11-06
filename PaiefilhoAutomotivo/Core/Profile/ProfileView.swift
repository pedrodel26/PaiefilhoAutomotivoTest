//
//  ProfileView.swift
//  PaiefilhoAutomotivo
//
//  Created by Pedro Delmondes  on 30/05/2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {

            ZStack {
                Color.gray.opacity(0.8).ignoresSafeArea()
                
                VStack {
                    HStack(alignment: .top) {
                        Button(action: {
                            //
                        }, label: {
                            Image(systemName: "folder")
                                .imageScale(.large)
                        })
                        
                        Spacer()
                        Button(action: {
                            //
                        }, label: {
                            Image(systemName: "person.crop.circle")
                                .imageScale(.large)
                        })
                    }
                    .padding()
                    .foregroundStyle(.black)
                    
                    VStack {
                        Text("Pai e Filho Automotivo")
                            .font(.largeTitle)
                            .foregroundStyle(.orange.opacity(0.8))
                            .fontWeight(.semibold)
                            .frame(height: 70)
                        
                        
                        Text("Aqui cuidamos do seu **carro!**")
                            .font(.system(size: 26))
                            .frame(height: 80)
                    }
                    
                    CustomSearchBar()
                    
                    Divider()
                    
                    VStack {
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(0..<10) { index in
                                    Rectangle()
                                        .frame(width: 120, height: 170)
                                        .cornerRadius(20)
                                    
                                }
                            }
                        }
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(0..<10) { index in
                                    Rectangle()
                                        .frame(width: 120, height: 170)
                                        .cornerRadius(20)
                                    
                                }
                            }
                        }
                    }
                    .padding()
                    .foregroundStyle(.orange.opacity(0.7))
                    
                    //                VStack {
                    //                    VStack {
                    //                        ScrollView(.horizontal) {
                    //                            HStack {
                    //                                Rectangle()
                    //                                    .frame(width:120, height: 170)
                    //                                    .cornerRadius(12)
                    //
                    //                                Rectangle()
                    //                                    .frame(width:120, height: 170)
                    //                                    .cornerRadius(12)
                    //
                    //                                Rectangle()
                    //                                    .frame(width:120, height: 170)
                    //                                    .cornerRadius(12)
                    //
                    //                                Rectangle()
                    //                                    .frame(width:120, height: 170)
                    //                                    .cornerRadius(12)
                    //                            }
                    //                        }
                    //                    }
                    //
                    //                    VStack {
                    //                        ScrollView(.horizontal) {
                    //                            HStack {
                    //                                Rectangle()
                    //                                    .frame(width:120, height: 170)
                    //                                    .cornerRadius(12)
                    //
                    //                                Rectangle()
                    //                                    .frame(width:120, height: 170)
                    //                                    .cornerRadius(12)
                    //
                    //                                Rectangle()
                    //                                    .frame(width:120, height: 170)
                    //                                    .cornerRadius(12)
                    //
                    //                                Rectangle()
                    //                                    .frame(width:120, height: 170)
                    //                                    .cornerRadius(12)
                    //                            }
                    //                        }
                    //                    }
                    //                }
                    //                .padding()
                    
                    
                    Spacer()
                    
                }
            }
    }
}


#Preview {
    ProfileView()
}


