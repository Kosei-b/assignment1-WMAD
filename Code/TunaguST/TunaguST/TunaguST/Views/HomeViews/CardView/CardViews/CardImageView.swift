//
//  CardImageView.swift
//  TunaguST
//
//  Created by Kosei Ban on 2021-12-01.
//

import UIKit


class CardImageView : UIImageView {
    
    init(imgName: String) {
        super.init(frame: .zero)
        
        image = UIImage(named: imgName)
        contentMode = .scaleAspectFill
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius =  150 / 2
        layer.masksToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
}
