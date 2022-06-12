//
//  StartView.swift
//  Tunagu
//
//  Created by Kosei Ban on 2022-01-24.
//

import SwiftUI

struct StartView: View {
    
    var body: some View {
        
        NavigationView{
            
            ZStack{
                
                Color.white
                    .ignoresSafeArea()
                
                VStack(spacing: 25){
                    
                    Image("Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150, alignment: .center)
                    
                   
                    Text("Let’s  find Your Favorite Job !")
                        .font(.system(size: 30))
                        .fontWeight(.heavy)
                        .foregroundColor(.gray)
                        .padding(.bottom ,60)
                        .shadow(radius: 5)
                    
                  // With Face book
                    Button(action: {
                        
                    } ,label: {
                        
                        HStack{
                            
                            Image("facebook-logo")
                            
                            Text("Continue With Face Book")
                                .font(.system(size: 20, weight: .bold))
                                .foregroundColor(.gray)
                        }
                       
                    })
                    .frame(width: 350, height: 45)
                    .background(Color(red: 255, green: 255, blue: 255))
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                    .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .cornerRadius(20)
                    .shadow(color: .gray, radius: 10)
                    
                    
                // With Apple
                    Button(action: {
                        
                    } ,label: {
                        
                        HStack{
                            
                            Image("apple-logo")
                            
                            Text("Continue With Apple")
                                .font(.system(size: 20, weight: .bold))
                                .foregroundColor(.gray)
                            
                        }
                        
                    })
                    .frame(width: 350, height: 45)
                    .background(Color(red: 255, green: 255, blue: 255))
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                    .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .cornerRadius(20)
                    .shadow(color: .gray, radius: 10)
                        
                    
                    Text("——————————　or　——————————")
                        .foregroundColor(.gray)
                        
                  
                    
                    NavigationLink(destination: SiginupView()) {
                        Text("Create account")
                            .font(.system(size: 20, weight: .bold))
                            .frame(width: 350, height: 45)
                            .background(Color(red: 0, green: 0, blue: 0))
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                            .padding(.top)
                    }
                   
                    HStack{
                        
                        Text("Have an account already? ")
                            .foregroundColor(.gray)
                        
                        NavigationLink(destination: LoginView()) {
                            Text("Log in")
                        }
                        
                    }
                
                }
                .padding(.horizontal, 30)
                
            }
            .navigationBarHidden(true)
            .navigationBarTitleDisplayMode(.inline)
    }
  }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
