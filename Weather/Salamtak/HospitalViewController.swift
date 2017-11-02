//
//  HospitalViewController.swift
//  Salamtak
//
//  Created by omar tarek on 10/23/17.
//  Copyright © 2017 boudy ashraf. All rights reserved.
//

import UIKit
import Cosmos
class HospitalViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var hospitalDescription: UITextView!
    @IBOutlet weak var hospitalName: UILabel!
    @IBOutlet weak var hospitalAddress: UILabel!
    @IBOutlet weak var hospitalRatingView: CosmosView!
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        hospitalDescription.font = UIFont(name: "Cairo" ,size: 12);
    }
    
    
    @IBAction func ratingAction(_ sender: Any) {
        
        self.performSegue(withIdentifier: "toRateVCID", sender: self)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for:indexPath)
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
        let frame = collectionView.frame
        
        
        return CGSize(width: frame.width - 10 , height: frame.height )
        
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        let pageWidth = scrollView.frame.size.width
        let currentPage = scrollView.contentOffset.x / pageWidth;
        
        if currentPage.truncatingRemainder(dividingBy: 1)  != 0
        {
            print(currentPage + 1 )
        }
        else
        {
            print(currentPage)
        }
    }
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 10
    }
    
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
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
