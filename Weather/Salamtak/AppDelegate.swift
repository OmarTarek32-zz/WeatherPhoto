//
//  AppDelegate.swift
//  Salamtak
//
//  Created by boudy ashraf on 10/21/17.
//  Copyright © 2017 boudy ashraf. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch
        
        clearColorsForNavigationBar()
        
        return true
    }

    
    
    func clearColorsForNavigationBar(){
    
        // navigation bar cusstomization
        
        let navigationApperance = UINavigationBar.appearance()
        
        navigationApperance.setBackgroundImage(UIImage(), for: .default)
       
       
            
        navigationApperance.shadowImage = UIImage(color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), size: CGSize(width: 200, height: 0.5))
        navigationApperance.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationApperance.isTranslucent = true
        
        if let barFont = UIFont(name: "Cairo-semibold", size: 18.0) {
            
            navigationApperance.titleTextAttributes =
                [NSForegroundColorAttributeName:UIColor.white,
                 NSFontAttributeName:barFont]
        }

        
        
    }
    
    func setColorsForNavigationBar(_ navgationBackGroundColor:UIColor , andTintColor tintColor:UIColor){
        
        // navigation bar cusstomization
        
        let navigationApperance = UINavigationBar.appearance()
        
        navigationApperance.barTintColor = navgationBackGroundColor
        navigationApperance.tintColor = tintColor
        navigationApperance.isTranslucent = false
        
        if let barFont = UIFont(name: "Cairo-semibold", size: 18.0) {
            
            navigationApperance.titleTextAttributes =
                [NSForegroundColorAttributeName:UIColor.white,
                 NSFontAttributeName:barFont]
        }
        
    }

    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

public extension UIImage {
    public convenience init?(color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) {
        let rect = CGRect(origin: .zero, size: size)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
        color.setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        guard let cgImage = image?.cgImage else { return nil }
        self.init(cgImage: cgImage)
    }
}

