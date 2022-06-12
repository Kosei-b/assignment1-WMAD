//
//  User.swift
//  TunaguST
//
//  Created by Kosei Ban on 2021-12-10.
//

import Foundation
import Firebase

class User {
    
    var name: String
    var email: String
    var createdAt: Timestamp
    
    init(dic: [String: Any]){
        self.name = dic["name"] as? String ?? ""
        self.email = dic["email"] as? String ?? ""
        self.createdAt = dic["createdAt"] as? Timestamp ?? Timestamp()
        
    }
    
    
}
