//
//  GlobalHelpers.swift
//  Location
//
//  Created by omar tarek on 8/7/17.
//  Copyright © 2017 omartarek. All rights reserved.
//

import Foundation
import UIKit
import PKHUD
import ReachabilitySwift


var reachability = Reachability()!

class GlobalHelpers{
    
    
    public static func presentStantardAlert(withTitle title:String , andMessage message:String ,titleForButton buttonTitle:String ,onViewController viewController:UIViewController){
        
        let alert = UIAlertController(title: title , message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: buttonTitle, style: UIAlertActionStyle.default, handler: nil))
        viewController.present(alert, animated: true, completion: nil)
        
    }
    
    
    public static func presentAcceptDenayAlert(withTitle title:String ,
                                 andMessage message:String ,
                                 whenTitleForAccept acceptTitle:String ,
                                 andtitleForDenay denayTitle:String ,
                                 fireActionForAccept acceptAction: @escaping ()->() ,
                                 andActionForDenay denayAction:  (()->())?,
                                 onViewController viewController:UIViewController){
        
        let alert = UIAlertController(title: title , message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: denayTitle, style: .default, handler: { (action) in
            
            denayAction?()
            
        }))
        
        alert.addAction(UIAlertAction(title: acceptTitle, style: .default, handler: { (action) in
            
            acceptAction()
            
        }))
        
        
        viewController.present(alert, animated: true, completion: nil)
        
    }
    
    // return ar if langauge is arabic
    // return en if langauge is english
    public static func getCurrentDeviceLanguage() -> String {
        
        let currentLanguage = NSLocale.preferredLanguages[0]
        let index = currentLanguage.index(currentLanguage.startIndex, offsetBy: 2)
        let lang = currentLanguage.substring(to: index)
        
        return lang
    }
    
    public static func checkInternetConnection() -> Bool{
        
        if reachability.isReachable{
            
            return true
            
        }else{
            
            if !HUD.isVisible{
                
                HUD.allowsInteraction = true
                HUD.dimsBackground = false
                HUD.flash(.label("No internet connection") , delay:2)
            
            }
            
            return false
            
        }
        
    }

    
    
    
}


