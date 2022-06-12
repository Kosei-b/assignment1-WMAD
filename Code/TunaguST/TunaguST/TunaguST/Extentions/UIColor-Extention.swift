//
//  UIColor-Extention.swift
//  TunaguST
//
//  Created by Kosei Ban on 2021-11-30.
//

import UIKit

extension UIColor {
    
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat,alpha: CGFloat) -> UIColor {
        
        return .init(red: red / 255, green: green / 255, blue: blue / 255, alpha: alpha / 1)
    }
    
    
}
