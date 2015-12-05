//
//  Utility.swift
//  Criptography
//
//  Created by Yair Hernández on 04/12/15.
//  Copyright (c) 2015 Yair Hernández. All rights reserved.
//

import Foundation
import UIKit

class Utility {

     static func addGradientBackGround(view: UIView) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.frame
        
        let topColor = UIColor(red: 73.0/255.0, green: 223.0/255.0, blue: 185.0/255.0, alpha: 1.0).CGColor
        let bottomColor = UIColor(red: 36.0/255.0, green: 115.0/255.0, blue: 192.0/255.0, alpha: 1.0).CGColor
        
        gradientLayer.colors = [topColor, bottomColor]
        gradientLayer.locations = [0.0, 1.0]
        
        view.layer.insertSublayer(gradientLayer, atIndex: 0)
    }
    
    static func formatButtom(button: UIButton, frame: CGRect?, cornerRadius: CGFloat?) {
        if let frame = frame {
            button.frame = frame
        }
        
        if let cornerRadius = cornerRadius {
            button.layer.cornerRadius = cornerRadius
        } else {
            button.layer.cornerRadius = 8.0
        }
        
        button.layer.borderWidth = 1.0
        button.layer.borderColor = UIColor.whiteColor().CGColor
        button.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        button.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
    }

}
