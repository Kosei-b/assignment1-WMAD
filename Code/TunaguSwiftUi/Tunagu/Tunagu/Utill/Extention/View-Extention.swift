//
//  View-Extention.swift
//  Tunagu
//
//  Created by Kosei Ban on 2022-01-22.
//

import SwiftUI

extension View {
    
    func asSiginupTextField() -> some View {
        modifier(SiginupTextFieldModifier())
    }
}


