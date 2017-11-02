//
//  leftSideViewController.swift
//  Salamtak
//
//  Created by omar tarek on 10/24/17.
//  Copyright © 2017 boudy ashraf. All rights reserved.
//

import UIKit

class leftSideViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    
    let cellsTitles = ["المفضلة","مواعيدي","بياناتي","شروط الإستخدام","اتصل بنا","تسجيل الخروج"]
    let cellsIcons = [#imageLiteral(resourceName: "logout"),#imageLiteral(resourceName: "call"),#imageLiteral(resourceName: "note"),#imageLiteral(resourceName: "file"),#imageLiteral(resourceName: "timer"),#imageLiteral(resourceName: "like")]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        let iconImageview = cell?.viewWithTag(1) as! UIImageView
        let titleImageView = cell?.viewWithTag(2) as! UILabel
        
        iconImageview.image = cellsIcons[indexPath.row]
        titleImageView.text = cellsTitles[indexPath.row]
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        switch indexPath.row {
        
        case 2:
            performSegue(withIdentifier: "SideToEditVC", sender: self)
            break
        case 3:
            performSegue(withIdentifier: "SideToTermsVC", sender: self)
            break
        case 4:
            performSegue(withIdentifier: "SideToAboutVC", sender: self)
            break
        default:
            return
            

        }
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
