//
//  Card.swift
//  TunaguST
//
//  Created by Kosei Ban on 2021-12-01.
//

import UIKit

class Card : UIView {
    
    init(BackgroundColor: UIColor) {
        super.init(frame: .zero)
        backgroundColor = BackgroundColor
        layer.cornerRadius = 20
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}
