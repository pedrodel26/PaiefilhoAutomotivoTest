//
//  MainTabBarView.swift
//  PaiefilhoAutomotivo
//
//  Created by Pedro Delmondes  on 01/06/2024.
//

import SwiftUI

struct MainTabBarView: View {
    var body: some View {
        TabView {
            Text("Localização")
                .tabItem {
                    VStack {
                        Image(systemName: "mappin.circle")
                            Text("Localização")
                }
                    .foregroundStyle(.orange)
            }
            ProfileView()
                .tabItem {
                    VStack {
                        Image(systemName: "house")
                            Text("Home")
                }
            }
            SwiftUIView()
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                            Text("Sobre")
                }
            }
        }
    }
}

#Preview {
    MainTabBarView()
}
