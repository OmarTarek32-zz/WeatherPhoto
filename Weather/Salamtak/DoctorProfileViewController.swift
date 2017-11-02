//
//  DoctorProfileViewController.swift
//  Salamtak
//
//  Created by boudy ashraf on 10/26/17.
//  Copyright © 2017 boudy ashraf. All rights reserved.
//

import UIKit
import JBDatePicker

class DoctorProfileViewController: UIViewController, JBDatePickerViewDelegate {
    @IBOutlet weak var profileScrollView: UIScrollView!
    func didSelectDay(_ dayView: JBDatePickerDayView) {
        print(dayView.date ?? "sss")
    }
    

    @IBOutlet weak var calenderView: JBDatePickerView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        calenderView.delegate = self
        profileScrollView.contentSize.height = 1000;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
