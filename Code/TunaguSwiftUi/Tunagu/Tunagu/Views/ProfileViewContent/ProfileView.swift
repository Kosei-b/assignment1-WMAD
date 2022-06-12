//
//  ProfileView.swift
//  Tunagu
//
//  Created by Kosei Ban on 2022-01-24.
//

import SwiftUI


struct ProfileView: View {
    
    private var frameWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    
    @EnvironmentObject var viewModel: AppViewModel
    
    
    var body: some View {
        
        NavigationView{
            
            // Profile schreen
            
            VStack{
                
                Image("Profile_Image")
                    .resizable()
                    .scaledToFill()
                    .cornerRadius(80)
                    .frame(width: 200, height: 200, alignment: .center)
                    .padding()
                    .padding(.top,50)
                    
                Text("Kosei Ban")
                    .font(.system(size: 30, weight: .heavy, design: .rounded))
                
                Text("_________________________")
                
                
                // Refarence View
                
                ZStack{
    
                    Color.white
                    
                    VStack{
                        
                        Text("My Account")
                            .foregroundColor(.gray)
                            .font(.system(size: 25, weight: .bold))
                            .frame(width: 300, alignment: .leading)
                            .padding()
                        
                        // manage profile button
                        
                        NavigationLink(destination: ManageProfileView()) {
                            
                            Label("Manage Profile", systemImage: "person.fill")
                            Image(systemName: "arrow.right")
                                .padding(.leading)
                        }
                        .foregroundColor(Color(.label))
                        .padding()
                        
                        
                        
                        
                        
                        Text("Notification")
                            .foregroundColor(.gray)
                            .font(.system(size: 25, weight: .bold))
                            .frame(width: 300, alignment: .leading)
                            .padding()
                        
                        
                        // Notification button
                        Button {
                            
                        } label: {
                            
                            Image(systemName: "bell.fill")
                            Text("Notification")
                            Image(systemName: "speaker.wave.3")
                                .padding(.leading)
                            
                            
                            
                        }
                        .foregroundColor(.black)
                        
                      
                      
                        
                        Text("More")
                            .foregroundColor(.gray)
                            .font(.system(size: 25, weight: .bold))
                            .frame(width: 300, alignment: .leading)
                            .padding()
                        
                        
                        Button {
                            
                            viewModel.logOut()
                            
                        } label: {
                            
                            Image(systemName: "arrow.left.to.line")
                            Text("Log Out")
                            
                        }
                        .foregroundColor(.red)
                        .padding(.bottom)
                        
                    }

                }
                .cornerRadius(20)
                .shadow(radius: 20)
                .padding(.all,30)
                .padding(.bottom)
                
                Color.white
                    .frame( height: 150)
                
            }
        }
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(true)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
