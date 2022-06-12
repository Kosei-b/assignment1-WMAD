//
//  TitleLabel.swift
//  TunaguST
//
//  Created by Kosei Ban on 2021-12-03.
//

import UIKit


class TitleLabel : UILabel {
    
    init(labelText: String) {
        super.init(frame: .zero)
        
        text = labelText
        font = .systemFont(ofSize: 30, weight: .bold)
        textColor = .gray
        textAlignment = .center
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
}
