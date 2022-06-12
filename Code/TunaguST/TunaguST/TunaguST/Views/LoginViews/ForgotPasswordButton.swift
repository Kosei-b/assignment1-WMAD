//
//  ForgotPasswordButton.swift
//  TunaguST
//
//  Created by Kosei Ban on 2021-12-08.
//

import UIKit

class ForgotPasswordButton : UIButton {
    
    init(title: String) {
        super.init(frame: .zero)
        
        setTitle(title, for: .normal)
        tintColor = .black
        setTitleColor(.gray, for: .normal)
      
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

