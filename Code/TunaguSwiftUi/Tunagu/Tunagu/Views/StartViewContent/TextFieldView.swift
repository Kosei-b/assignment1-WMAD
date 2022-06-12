//
//  TextFieldView.swift
//  Tunagu
//
//  Created by Kosei Ban on 2022-01-26.
//

import SwiftUI

struct TextFieldView: View {
   
    var placeholder: Text
    @Binding var text: String
    var editingChanged: (Bool)->() = { _ in }
    var commit: ()->() = { }
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty { placeholder }
            TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
        }
    }
    
}

