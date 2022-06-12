//
//  SiginuoTextFieldModifier.swift
//  Tunagu
//
//  Created by Kosei Ban on 2022-01-22.
//

import SwiftUI

struct SiginupTextFieldModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .padding(10)
            .padding(.leading,5)
            .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(20)
            .shadow(color: .gray, radius: 10)
        
    }
    
}

