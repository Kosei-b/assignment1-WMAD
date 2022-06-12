//
//  CreateAccountButton.swift
//  TunaguST
//
//  Created by Kosei Ban on 2021-12-03.
//

import UIKit

class CreateAccountButton : UIButton {
    
    override var isHighlighted: Bool {
        
        didSet {
            self.backgroundColor = isHighlighted ? .rgb(red: 3, green: 3, blue: 3, alpha: 0.5) : .rgb(red: 3, green: 3, blue: 3, alpha: 1)
        }
        
    }
    
    init(title: String) {
        super.init(frame: .zero)
        
       backgroundColor = .rgb(red: 3, green: 3, blue: 3, alpha: 1)
       layer.cornerRadius = 20
       setTitle(title, for: .normal)
       setTitleColor(.white, for: .normal)
       
       layer.shadowOffset = .init(width: 1.5, height: 2)
       layer.shadowColor = UIColor.black.cgColor
       layer.shadowOpacity = 0.3
       layer.shadowRadius = 15
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
