//
//  HomeTopVarView.swift
//  Tunagu
//
//  Created by Kosei Ban on 2022-04-11.
//

import SwiftUI

struct HomeTopVarView: View {
    
    @Binding var text: String
 
    @State private var isEditing = false
    
    
    var body: some View {
       
        
        HStack{
            
            ProfileIconView()
                .padding(.leading,10)
           
            SearchBarView(text: .constant(""))
                .padding(.top,20)
            
            
        }
    }
}

struct HomeTopVarView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTopVarView(text: .constant(""))
        
    }
}
