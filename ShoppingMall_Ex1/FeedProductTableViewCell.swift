//
//  FeedProductTableViewCell.swift
//  ShoppingMall_Ex1
//
//  Created by Ahreum CHO on 2020/09/19.
//  Copyright © 2020 Ahreum CHO. All rights reserved.
//

import UIKit

class FeedProductTableViewCell: UITableViewCell {
    @IBOutlet weak var ProductImage: UIImageView!
    @IBOutlet weak var ProductName: UILabel!
    @IBOutlet weak var ProductPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
