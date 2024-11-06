//
//  SwiftUIView1.swift
//  PaiefilhoAutomotivo
//
//  Created by Pedro Delmondes  on 31/07/2024.
//

import SwiftUI

struct SwiftUIView1: View {
    
    @State var show: Bool = false
    
    var body: some View {
        Text("Hello, World!")
        
        Button {
            show = true
        } label: {
            Text("Entre!!")
                .foregroundStyle(.blue)
        }
        .alert(isPresented: $show, content: {
            Alert(title: Text("Alert appearing!!!"))
        })

    }
}

#Preview {
    SwiftUIView1()
}
