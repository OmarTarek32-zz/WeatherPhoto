//
//  CliencTableViewCell.swift
//  Salamtak
//
//  Created by omar tarek on 10/23/17.
//  Copyright © 2017 boudy ashraf. All rights reserved.
//

import UIKit
import Cosmos
class ClinicTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var clinicName: UILabel!
    @IBOutlet weak var clinicSubtitle: UILabel!
    @IBOutlet weak var clinicAddress: UILabel!
    @IBOutlet weak var clinicRatingView: CosmosView!
    @IBOutlet weak var clinicReserveDateView: FancyView!
    @IBOutlet weak var clinicImageview: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
