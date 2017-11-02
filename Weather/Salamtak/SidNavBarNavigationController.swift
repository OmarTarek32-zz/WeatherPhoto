//
//  SidNavBarNavigationController.swift
//  Salamtak
//
//  Created by omar tarek on 10/24/17.
//  Copyright © 2017 boudy ashraf. All rights reserved.
//

import UIKit
import SideMenu

class SidNavBarNavigationController: UISideMenuNavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
//        self.navigationBar.isHidden = true
        SideMenuManager.menuPresentMode = .menuSlideIn
        SideMenuManager.menuFadeStatusBar = false

        
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
