//
//  TitleLabelLogin.swift
//  TunaguST
//
//  Created by Kosei Ban on 2021-12-08.
//

import UIKit

class TitleLabelLogin : UILabel {
    
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
