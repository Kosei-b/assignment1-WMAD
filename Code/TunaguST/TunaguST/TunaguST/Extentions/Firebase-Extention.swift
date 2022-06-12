//
//  Firebase-Extention.swift
//  TunaguST
//
//  Created by Kosei Ban on 2021-12-08.
//

import Firebase
import Foundation

//MARK: -Auth
extension Auth {
    
    static func createUserToFireAuth(email: String?, password: String?, name: String? , completion: @escaping (Bool) -> (Void)) {
        guard let email = email else { return }
        guard let password = password else { return }
        
        Auth.auth().createUser(withEmail: email, password: password) { (auth, err) in
            if let err = err {
                print("Failed to save Auth Info" , err)
                return
            }
            guard let uid = auth?.user.uid else { return }
            Firestore.setUserDataToFireStorage(email: email, uid: uid, name: name) { success in
                completion(success)
            }
        }
    }
    
    static func loginWithFireAuth(email: String, password: String, completion: @escaping (Bool) -> (Void)) {

        Auth.auth().signIn(withEmail: email, password: password) { (res,err) in
            if let err = err {
                print("Failed to login :" , err)
                completion(false)
                return
            }
            print("Success to Login")
            completion(true)
        }
    }
}

//MARK: -Firestore
extension Firestore {
    
    static func setUserDataToFireStorage(email: String, uid: String, name: String?, completion: @escaping (Bool) -> ()) {
        guard let name = name else { return }
        
        let document = [
            "name": name,
            "email": email,
            "createdAt" : Timestamp()
        ] as [String : Any]
        
        Firestore.firestore().collection("users").document(uid).setData(document) { err in
            
            if let err = err {
                print("Failed to save User Info to FireStore" , err)
                return
            }
            completion(true)
            print("success to save UserInfo to FireStore" )
        }
    }
    
    // Get User Info fropm Fire Store
    static func fetchUserFromFirestore(uid: String , completion: @escaping (User?) -> (Void)) {
        
        Firestore.firestore().collection("users").document(uid).getDocument { (snapshot,err) in
            
            if let err = err {
                print("Failed to get User Info", err)
                completion(nil)
                return
            }
            guard let dic = snapshot?.data() else { return }
            let user = User(dic: dic)
            completion(user)
        }
    }
    
    
    // Get Other User Info From Fire Store!!
    
    static func fetchUsersFromFirestore(completion: @escaping ([User]) -> (Void) ) {
        
        Firestore.firestore().collection("users").getDocuments { (snapshots,err) in
            if let err = err {
                print("Failed to get Users Info", err)
                return
            }
            let users = snapshots?.documents.map({ (snapshot) -> User in
                let dic = snapshot.data()
                let user = User(dic: dic)
                return user
            })
            completion(users ?? [User]()) 
        }
    }
}
