//
//  customTableViewCell.swift
//  sauravKaTableView
//
//  Created by Robin Malhotra on 07/07/15.
//  Copyright © 2015 Robin Malhotra. All rights reserved.
//

import UIKit

class customTableViewCell: UITableViewCell {
    let videoImageView=UIImageView()
    let titleLabel=UILabel()
    let dateLabel=UILabel()
    override func awakeFromNib() {
        super.awakeFromNib()

        // Initialization code
    }
    override init( style: UITableViewCellStyle,reuseIdentifier: String?)
    {
        super.init(style: UITableViewCellStyle.Default, reuseIdentifier: reuseIdentifier)
        
    }
    required init(coder decoder: NSCoder) {
        super.init(coder: decoder)
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
