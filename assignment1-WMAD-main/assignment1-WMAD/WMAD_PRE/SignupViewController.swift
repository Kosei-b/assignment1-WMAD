//
//  SignupViewController.swift
//  WMAD_PRE
//
//  Created by Kosei Ban on 2021-10-06.
//

import UIKit

class SignupViewController: UIViewController {
    
    @IBOutlet weak var SiginUpButton: UIButton!
    var titleValue: String = ""
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        print("value is : \(titleValue)")
        
        title = "Sign up"
        navigationController?.navigationBar.backgroundColor = UIColor.blue
        
        //Button Corner Radius
        SiginUpButton.layer.cornerRadius = 25
        
        
        
    }
}
