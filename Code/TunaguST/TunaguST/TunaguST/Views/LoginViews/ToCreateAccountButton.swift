//
//  ToCreateAccountButton.swift
//  TunaguST
//
//  Created by Kosei Ban on 2021-12-08.
//

import UIKit

class ToCreateAccountButton : UIButton {
    
   
    init(title: String) {
        
        super.init(frame: .zero)
        setTitle(title, for: .normal)
        setTitleColor(UIColor.rgb(red: 77, green: 141, blue: 232, alpha: 1), for: .normal)
        setTitleColor(UIColor.rgb(red: 77, green: 141, blue: 232, alpha: 0.5), for: UIControl.State.highlighted)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
