//
//  ViewController.swift
//  WMAD_PRE
//
//  Created by Kosei Ban on 2021-10-04.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print( "View Contller veiwdidLoad")
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print( "View Contller viewWillAppear")
    
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print( "View Contller viewDidAppear")
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print( "View Contller viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        print( "View Contller viewDidDisappear")
    }
    
    
    override func performSegue(withIdentifier identifier: String, sender: Any?) {
        if identifier == "loginSegue"{
            // do enything related this segue
        }else if identifier == "siginUpSegue"{
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "loginSegue"{
            
            var destinationVC = segue.destination as! LoginViewController; destinationVC.titleValue = "LOGIN TITLE"
            
            
            
            
        }else if segue.identifier == "siginUpSegue"{
            var destinationVC = segue.destination as! SignupViewController; destinationVC.titleValue = "SIGINUP TITLE"
            
            
            
            
            
        }
        
    }
    
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
         
       // if identifier == "loginSegue"{
       //     return false
       // }else {
        //    return true
       // }
        return true
    }
    
    
    


}

