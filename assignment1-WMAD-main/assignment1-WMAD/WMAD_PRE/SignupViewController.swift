//
//  SignupViewController.swift
//  WMAD_PRE
//
//  Created by Kosei Ban on 2021-10-06.
//

import UIKit

class SignupViewController: UIViewController {
    
    var titleValue: String = ""
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        print("value is : \(titleValue)")
        
        title = "Sign up"
        navigationController?.navigationBar.backgroundColor = UIColor.blue
        
        
        
    }
}
