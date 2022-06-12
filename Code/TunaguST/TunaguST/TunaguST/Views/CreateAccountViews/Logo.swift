//
//  Logo.swift
//  TunaguST
//
//  Created by Kosei Ban on 2021-12-03.
//

import UIKit


class Logo : UIImageView {
    
   init(imgName: String) {
        super.init(frame: .zero)
        
        image = UIImage(named: imgName)
        contentMode = .scaleAspectFit
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
}
