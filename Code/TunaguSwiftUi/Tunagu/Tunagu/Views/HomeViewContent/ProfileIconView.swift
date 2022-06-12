//
//  ProfileIconView.swift
//  Tunagu
//
//  Created by Kosei Ban on 2022-04-11.
//

import SwiftUI

struct ProfileIconView: View {
    var body: some View {
        
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
}

struct ProfileIconView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileIconView()
    }
}
