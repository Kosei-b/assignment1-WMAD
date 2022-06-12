//
//  HomeContentView.swift
//  Tunagu
//
//  Created by Kosei Ban on 2022-01-21.
//

import SwiftUI

struct HomeContentView: View {
    
    var body: some View { 
      
        NavigationView{
          
            VStack{
                
                HomeTopVarView(text: .constant(""))
                
                Divider()
                
                CardGridView()
                
            }
            
            .navigationBarHidden(true)
            .navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct HomeContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeContentView()
    }
}
