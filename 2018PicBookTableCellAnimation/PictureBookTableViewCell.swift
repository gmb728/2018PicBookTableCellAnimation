//
//  PictureBookTableViewCell.swift
//  2018PicBookTableCellAnimation
//
//  Created by Chang Sophia on 1/16/19.
//  Copyright © 2019 Chang Sophia. All rights reserved.
//

import UIKit

class PictureBookTableViewCell: UITableViewCell {

    
    @IBOutlet weak var bookCoverImage: UIImageView!
    @IBOutlet weak var illustratorLabel: UILabel!
    @IBOutlet weak var bookNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
