//
//  HomeTableViewCell.swift
//  Salamtak
//
//  Created by omar tarek on 10/23/17.
//  Copyright © 2017 boudy ashraf. All rights reserved.
//

import UIKit
import Cosmos
class HomeTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var hospitalImageView: UIImageView!
    @IBOutlet weak var hospitlaName: UIStackView!
    
    @IBOutlet weak var hospitalAddress: UILabel!
    
    @IBOutlet weak var hospitalRateingView: CosmosView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
