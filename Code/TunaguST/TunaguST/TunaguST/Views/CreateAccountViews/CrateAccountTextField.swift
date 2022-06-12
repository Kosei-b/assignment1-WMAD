//
//  CrateAccountTextField.swift
//  TunaguST
//
//  Created by Kosei Ban on 2021-12-03.
//

import UIKit

class CrateAccountTextField : UITextField {
    
    //MARK: UserName , Email , Password TextField
    
    init(placeHolder: String) {
        super.init(frame: .zero)
        
        placeholder = placeHolder
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 0.8
        layer.cornerRadius = 20
        font = .systemFont(ofSize: 14)
        
        layer.shadowOffset = .init(width: 1.5, height: 2)
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.3
        layer.shadowRadius = 15
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
