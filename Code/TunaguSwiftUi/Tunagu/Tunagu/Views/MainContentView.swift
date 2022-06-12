//
//  MainContentView.swift
//  Tunagu
//
//  Created by Kosei Ban on 2022-01-25.
//

import SwiftUI

struct MainContentView: View {
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        
        NavigationView{
            
            // Delete NavigationVar !!!!!!!!!!
            
            if viewModel.logedIn {
                
                HomeView()
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(true)
                    
                
            }else {
                
               StartView()
                    .navigationBarHidden(true)
                    .navigationBarTitleDisplayMode(.inline)
                    
            }
                
        }
        
        .onAppear {
            viewModel.logedIn = viewModel.isLogedIn
        }
    }
}
