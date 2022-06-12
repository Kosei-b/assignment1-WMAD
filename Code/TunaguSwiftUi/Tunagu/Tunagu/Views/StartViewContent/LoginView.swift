//
//  LoginView.swift
//  Tunagu
//
//  Created by Kosei Ban on 2022-01-22.
//

import SwiftUI

struct LoginView: View {
    
    @State var isLoginMode = false
    @State var Email = ""
    @State var Password = ""
    
    init(){
        
    }
    

    @Environment(\.presentationMode) var presentation
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        
        NavigationView{
            
            ZStack{
                
                Color.white
                    .ignoresSafeArea()
                
                VStack(spacing: 25){
                    
                    Text("Log in")
                        .font(.system(size: 35))
                        .foregroundColor(.gray)
                    
                    Image("Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150, alignment: .center)
                    
                    TextFieldView(
                        placeholder: Text("Email").foregroundColor(.gray),
                        text: self.$Email
                    )
                        .foregroundColor(.black)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .asSiginupTextField()
                        
                
                    TextFieldView(
                        placeholder: Text("Password").foregroundColor(.gray),
                        text: self.$Password
                    )
                        .foregroundColor(.black)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .asSiginupTextField()
                        
                    
                    NavigationLink("Forgot Password?", destination: SiginupView())
                        .frame(width: 350, height: 30, alignment: .trailing)
        
                    Button(action: {
                        
                        guard !Email.isEmpty, !Password.isEmpty else {
                            return
                        }
                        
                        // Login func
                        viewModel.logIn(email: Email, password: Password)
                        // check here
                        handleAction()
                        
                    } ,label: {
                        Text("Log in")
                            .font(.system(size: 20, weight: .bold))
                    })
                    .frame(width: 350, height: 45)
                    .background(Color(red: 0, green: 0, blue: 0))
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                    .padding(.top, 60)
                    
                    
                    HStack {
                        
                        Text("Don’t have an account ?")
                            .foregroundColor(.gray)
                        
                        Button(action: {
                            self.presentation.wrappedValue.dismiss()
                            
                        }, label: {
                            Text("Create account")
                        })
            
                    }
                    .padding(.top,50)
                   
                }
                .padding(.horizontal, 30)
                
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
    
    
    
    
 private func handleAction() {
            if isLoginMode {
                print("Should log in!")
            } else {
                print("Register a new account !")
            }
        }
    
    
    
    
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
