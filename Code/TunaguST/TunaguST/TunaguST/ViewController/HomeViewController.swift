//
//  ViewController.swift
//  TunaguST
//
//  Created by Kosei Ban on 2021-11-25.
//

import UIKit
import FirebaseAuth
import RxSwift
import FirebaseFirestore
import PKHUD


class HomeViewController: UIViewController {
    
    private var user: User?
    
//    Job Card Info
    private var jobCardData: [String] = []
    
//    Other Users Info
    
    let TopView = TopControllView()
    
    let view2 : UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        
        return view
    } ()
    let cardView = CardView()

    let logoutButton : UIButton  = {
        let button = UIButton()
        button.setTitle("Log out", for: .normal)
        
        
        return button
    }()

    //MARK: Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.backgroundColor = .gray
        setUpLayout()
        
//    get job info data
        
        func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if Auth.auth().currentUser?.uid == nil {
            let createAccountController = CreateAccountViewController()
            let nav = UINavigationController(rootViewController: createAccountController)
            nav.modalPresentationStyle = .fullScreen
            self.present(nav, animated: true)
            
        }
    }
    
        func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    
        guard let uid = Auth.auth().currentUser?.uid else { return }
        Firestore.fetchUserFromFirestore(uid: uid) { (user) in
            if let user = user {
                self.user = user
            }
        }
    }
   
    
    //MARK: Methods
//    private func fetchUsers() {
//        HUD.show(.progress)
//        Firestore.fetchUsersFromFirestore { (users) in
//            HUD.hide()
//            self.users = users
//            print("Sucsses to get User Info")
//        }
//
//        self.users.forEach { (user) in
//            let card = CardView()
//
//
//        }
//    }
//
    }
    private func setUpLayout() {
        
        let stackView = UIStackView(arrangedSubviews: [logoutButton,TopView,view2,cardView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        
        self.view.addSubview(stackView)
        
        stackView.anchor(top: view.safeAreaLayoutGuide.topAnchor,bottom: view.safeAreaLayoutGuide.bottomAnchor,left: view.leftAnchor, right: view.rightAnchor)
        TopView.anchor(height: 80)
        view2.anchor(height: 100)
        
//       logoutButton.addTarget(self, action: #selector(tappedLogoutButton), for: .touchUpInside)
        
    }
    
////    @objc private func tappedLogoutButton() {
//
//        do {
//            try Auth.auth().signOut()
//            let createAccountController = CreateAccountViewController()
//            let nav = UINavigationController(rootViewController: createAccountController)
//            nav.modalPresentationStyle = .fullScreen
//            self.present(nav, animated: true)
//        } catch {
//            print("Failed to Logout :" , error)
//        }
//    }
//}
    }
