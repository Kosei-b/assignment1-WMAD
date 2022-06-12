//
//  HomeTopNavBarModifier.swift
//  Tunagu
//
//  Created by Kosei Ban on 2022-01-25.
//

import SwiftUI

struct HomeTopNavBarModifier: ViewModifier {
   
    func body(content: Content) -> some View {
        content
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                    } label: {
                        Image("Profile_Image")
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(50)
                            .frame(width: 50, height: 50, alignment: .center)
                    }
                    .disabled(true)
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                    SearchBarView(text: .constant(""))
                    
                }
                
                
            }
    
    }
}
