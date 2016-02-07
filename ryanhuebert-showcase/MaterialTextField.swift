//
//  MaterialTextField.swift
//  ryanhuebert-showcase
//
//  Created by Ryan Huebert on 2/1/16.
//  Copyright © 2016 Ryan Huebert. All rights reserved.
//

import UIKit

class MaterialTextField: UITextField {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    override func awakeFromNib() {
        layer.cornerRadius = 2.0
        layer.borderColor = UIColor(netHex: COLOR.SHADOW.rawValue, alpha: 0.1).CGColor
        layer.borderWidth = 1.0
    }

    // For placeholder
    override func textRectForBounds(bounds: CGRect) -> CGRect {
        return returnInsetRect(bounds)
    }
    
    override func editingRectForBounds(bounds: CGRect) -> CGRect {
        return returnInsetRect(bounds)
    }
    
    private func returnInsetRect(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds, 10, 0)
    }
}
