//
//  RightView.swift
//  Maktorat
//
//  Created by Boudy Ashraf on 6/7/17.
//  Copyright © 2017 Boudy Ashraf. All rights reserved.
//

import UIKit

class RightImageTextField: UITextField {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    @IBInspectable var rightImage : UIImage?{
        didSet{
            self.rightViewMode = .always
            let rightImageView = UIImageView(image:rightImage)
            let imageSize = CGSize(width: rightImageView.frame.size.width/2, height: rightImageView.frame.size.height/2)
            rightImageView.frame.size = imageSize
            self.rightView = rightImageView

        }
    }
    
    func showPasswordGesture(){
        self.rightView?.isUserInteractionEnabled = true
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action:
            #selector(showPassword))
        self.rightView?.addGestureRecognizer(tapGestureRecognizer)
    }
    func showPassword() {
        if self.isSecureTextEntry{
            self.isSecureTextEntry = false
        }else{
            self.isSecureTextEntry = true
        }
    }

}
