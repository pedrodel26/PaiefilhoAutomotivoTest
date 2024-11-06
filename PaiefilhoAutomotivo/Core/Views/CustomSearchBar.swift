//
//  CustomSearchBar.swift
//  PaiefilhoAutomotivo
//
//  Created by Pedro Delmondes  on 05/06/2024.
//

import SwiftUI

struct CustomSearchBar: View {
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            HStack {
                Image(systemName: "magnifyingglass")
                    .padding(.leading)
                    .foregroundStyle(.black)
                    .font(.title2)
                Text("Busque por...")
                    .font(.headline)
                    .foregroundStyle(.black.opacity(0.5))
                
                Spacer()
            }
            .frame(height: 60)
            .overlay {
                Capsule()
                    .stroke(lineWidth: 0.5)
                    .foregroundStyle(Color(.black))
                    .shadow(color: .black.opacity(1), radius: 10)
            }
            .padding()
            
            
            
        })
    }
}

#Preview {
    CustomSearchBar()
}
