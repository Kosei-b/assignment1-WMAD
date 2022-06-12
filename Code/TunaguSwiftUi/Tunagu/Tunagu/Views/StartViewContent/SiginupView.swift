//
//  SiginupView.swift
//  Tunagu
//
//  Created by Kosei Ban on 2022-01-21.
//

import SwiftUI

struct SiginupView: View {
    
    @State var name = ""
    @State var Email = ""
    @State var Password = ""
    
    @State var text: String = ""
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        
        NavigationView{
            
            ZStack{
                
                Color.white
                    .ignoresSafeArea()
                
                VStack(spacing: 25){
                    
                    Text("Create your account")
                        .font(.system(size: 35))
                        .foregroundColor(.gray)
                    
                    Image("Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150, alignment: .center)
                    
                  
                    TextFieldView(
                        placeholder: Text("User Name").foregroundColor(.gray),
                        text: self.$name
                    )
                        .foregroundColor(.black)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .asSiginupTextField()
                        .padding(.leading)
                        .padding(.trailing)
                    
                    TextFieldView(
                        placeholder: Text("Email").foregroundColor(.gray),
                        text: self.$Email
                    )
                        .foregroundColor(.black)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .asSiginupTextField()
                        .padding(.leading)
                        .padding(.trailing)
                    
                    TextFieldView(
                        placeholder: Text("Password").foregroundColor(.gray),
                        text: self.$Password
                    )
                        .foregroundColor(.black)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .asSiginupTextField()
                        .padding(.leading)
                        .padding(.trailing)
                    
                    
                    
                    Button(action: {
                        
                        guard !Email.isEmpty, !Password.isEmpty else {
                            return
                        }
                        
                        viewModel.sginUp(email: Email, password: Password)
                        
                    } ,label: {
                        Text("Create account")
                            .font(.system(size: 20, weight: .bold))
                    })
                    .frame(width: 350, height: 45)
                    .background(Color(red: 0, green: 0, blue: 0))
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                    .padding(.top, 60)
                    
                    HStack{
                        
                        Text("Have an account already? ")
                            .foregroundColor(.gray)
                        
                        NavigationLink(destination: LoginView()) {
                            Text("Log in")
                    }
                
                }
                .padding(.horizontal, 30)
            }
        }
            .navigationBarHidden(true)
            .navigationBarTitleDisplayMode(.inline)
    }
  }
}

struct SiginupView_Previews: PreviewProvider {
    static var previews: some View {
        SiginupView()
    }
}
