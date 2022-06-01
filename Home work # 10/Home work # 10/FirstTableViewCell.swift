//
//  FirstTableViewCell.swift
//  Home work # 10
//
//  Created by Mac on 02.12.2021.
//  Copyright © 2021 Mac. All rights reserved.
//

import UIKit

class FirstTableViewCell: UITableViewCell {
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var firstLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
     
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

   
    }

}
