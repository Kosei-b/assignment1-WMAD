//
//  HaveAccountAlreadyLabel.swift
//  TunaguST
//
//  Created by Kosei Ban on 2021-12-03.
//

import UIKit

class  HaveAccountAlreadyLabel : UILabel {
   init(labelText: String) {
        super.init(frame: .zero)
        
        text = labelText
        textColor = .black
        font = .systemFont(ofSize: 15)
        textAlignment = .right
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
