//
//  AppViewModel.swift
//  Tunagu
//
//  Created by Kosei Ban on 2022-01-24.
//

import SwiftUI
import FirebaseAuth
import Firebase


class AppViewModel: ObservableObject{
    
    let auth = Auth.auth()
    let storage = Storage.storage()

    @Published var logedIn = false
    
    var isLogedIn: Bool {
        
        return auth.currentUser != nil
    }
    
    // Log in function
    
    func logIn(email: String, password: String){
        auth.signIn(withEmail: email, password: password) { [weak self] result, error in
            
            guard result != nil, error == nil else{
                return
            }
       
            DispatchQueue.main.async {
                // Success
                self?.logedIn = true
                
            }
        }
    }
    
    // Sigin up function
    
    func sginUp(email: String, password: String){
        auth.createUser(withEmail: email, password: password) { [weak self] result, error in
            
            guard result != nil, error == nil else{
                return
            }
            DispatchQueue.main.async {
                // Success
                self?.logedIn = true
            }
        }
    }
    
    
    // Log out function
    func logOut() {
      try?  auth.signOut()
        
        self.logedIn = false
    }
   
}




