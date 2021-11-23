//
//  AnimationViewController.swift
//  TravelApp
//
//  Created by Kosei Ban on 2021-11-22.
//

import UIKit
import Lottie


class AnimationViewController : UIViewController {
    
    lazy var anmationView : AnimationView  = {
        
        let anim = AnimationView(name: "animation")
        anim.translatesAutoresizingMaskIntoConstraints = false
        anim.loopMode = .loop
        anim.contentMode = .scaleAspectFit
        return anim
    
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        
        view.addSubview(anmationView)
        NSLayoutConstraint.activate([
            anmationView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            anmationView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            anmationView.topAnchor.constraint(equalTo: view.topAnchor),
            anmationView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
        ])
        
        anmationView.play()
        
    }
    
    
    
    
}
