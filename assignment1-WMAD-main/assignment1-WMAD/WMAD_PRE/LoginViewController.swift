//
//  LoginViewController.swift
//  WMAD_PRE
//
//  Created by Kosei Ban on 2021-10-06.
//

import UIKit

class LoginViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    var titleValue: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("value is : \(titleValue)")
        
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        textField.backgroundColor = UIColor(hue: 0, saturation: 0.61, brightness: 0.94, alpha: 1.0) /* #ef5d5d */
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.backgroundColor = UIColor(hue: 0.35, saturation: 0.53, brightness: 0.88, alpha: 1.0) /* #6ae276 */
    
    }
   /* func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
       
    }
 */
        
        
        
    override func performSegue(withIdentifier identifier: String, sender: Any?) {
        
        if identifier == "dashboard" {
            
        }
     
        
        
        
    }
}

