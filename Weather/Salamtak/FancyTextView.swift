//
//  FancyTextView.swift
//  Maktorat
//
//  Created by Boudy Ashraf on 6/16/17.
//  Copyright © 2017 Boudy Ashraf. All rights reserved.
//

import UIKit
@IBDesignable
class FancyTextView: UITextView {

    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
        
    }
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = .black {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
}
