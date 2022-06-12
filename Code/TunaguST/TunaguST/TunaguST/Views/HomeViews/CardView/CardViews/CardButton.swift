//
//  CardButton.swift
//  TunaguST
//
//  Created by Kosei Ban on 2021-12-01.
//

import UIKit


// FavotiteButton , CommentButton
class CardButton : UIButton {
    
   init(imgName: String) {
       super.init(frame: .zero)
        
        setImage(UIImage(systemName: imgName), for: .normal)
        contentVerticalAlignment = .fill
        contentHorizontalAlignment = .fill
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
}
