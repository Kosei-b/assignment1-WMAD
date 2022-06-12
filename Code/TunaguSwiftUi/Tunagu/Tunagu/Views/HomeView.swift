//
//  ContentView.swift
//  Tunagu
//
//  Created by Kosei Ban on 2022-01-09.
//

import SwiftUI
import FirebaseAuth


struct HomeView: View {
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        
        NavigationView{
            
            TabView{
                
                HomeContentView()
                    .navigationBarTitleDisplayMode(.inline)
                    .tabItem{
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                
                FavoriteListView()
                    .navigationBarTitleDisplayMode(.inline)
                    .tabItem{
                        Image(systemName: "list.dash")
                        Text("List")
                    }
                
                // Use FaceBook Massanger API
                Text("MessageView")
                    .navigationBarTitleDisplayMode(.inline)
                    .tabItem{
                        Image(systemName: "message")
                        Text("Message")
                    }
                
                
                ProfileView()
                    .navigationBarTitleDisplayMode(.inline)
                    .tabItem{
                        Image(systemName: "person")
                        Text("Profile")
                    }
                
            }
            
            .onAppear() {
                UITabBar.appearance().backgroundColor = .white
            }
            .accentColor(.black)
            .navigationBarHidden(true)
            .navigationBarTitle("", displayMode: .inline)
            
        }
       
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
        }
    }
}
