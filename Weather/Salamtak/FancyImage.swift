//
//  FancyImage.swift
//  Maktorat
//
//  Created by Boudy Ashraf on 6/15/17.
//  Copyright © 2017 Boudy Ashraf. All rights reserved.
//

import UIKit

@IBDesignable
class FancyImage: UIImageView {
    
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
    
    
    @IBInspectable var roundedImage: Bool = false {
        didSet {
            if roundedImage {
                layer.cornerRadius = frame.size.width / 2
                layer.masksToBounds = true
                clipsToBounds = true
            }
            else{
                layer.cornerRadius = cornerRadius
                layer.masksToBounds = cornerRadius > 0
                layer.masksToBounds = false
                clipsToBounds = false
            }
        }
        
    }
}

