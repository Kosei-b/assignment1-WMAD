//
//  CardInfoLabel.swift
//  TunaguST
//
//  Created by Kosei Ban on 2021-11-30.
//



import UIKit


class CardInfoLabel : UILabel {

    // Top Info label ( occupeton , location )
    
    init(labelText: String , labelFont: UIFont , labelTextColor : UIColor) {
        super.init(frame: .zero)
        
        font = labelFont
        textColor = labelTextColor
        text = labelText
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
