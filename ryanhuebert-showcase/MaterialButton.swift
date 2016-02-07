//
//  MaterialButton.swift
//  ryanhuebert-showcase
//
//  Created by Ryan Huebert on 2/1/16.
//  Copyright © 2016 Ryan Huebert. All rights reserved.
//

import UIKit

class MaterialButton: UIButton {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

    
    override func awakeFromNib() {
        //super.awakeFromNib()
        
        layer.cornerRadius = 2.0
        layer.shadowColor = UIColor(netHex: COLOR.SHADOW.rawValue, alpha: OPACITY.SHADOW.rawValue).CGColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSizeMake(0.0, 2.0)
    }
}
