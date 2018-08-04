//
//  AttractionTableViewCell.swift
//  NavigationTest
//
//  Created by NoDack on 04/08/2018.
//  Copyright © 2018 zuzero. All rights reserved.
//

import UIKit

class AttractionTableViewCell: UITableViewCell {

    
    // MARK: IBOutlets
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var label: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
