//
//  TermsViewController.swift
//  Salamtak
//
//  Created by boudy ashraf on 10/29/17.
//  Copyright © 2017 boudy ashraf. All rights reserved.
//

import UIKit

class TermsViewController: UIViewController {

    @IBOutlet weak var termsTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        termsTextView.font = UIFont(name: "Cairo", size: 14)
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
