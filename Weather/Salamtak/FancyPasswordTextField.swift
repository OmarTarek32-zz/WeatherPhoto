//
//  FancyPasswordTextField.swift
//  Maktorat
//
//  Created by Boudy Ashraf on 6/15/17.
//  Copyright © 2017 Boudy Ashraf. All rights reserved.
//
import UIKit

@IBDesignable
class FancyPasswordTextField: FancyTextField{
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
