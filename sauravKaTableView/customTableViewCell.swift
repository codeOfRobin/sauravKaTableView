//
//  customTableViewCell.swift
//  sauravKaTableView
//
//  Created by Robin Malhotra on 07/07/15.
//  Copyright © 2015 Robin Malhotra. All rights reserved.
//
import QuartzCore
import UIKit

class customTableViewCell: UITableViewCell {
    let videoImageView=UIImageView()
    let titleLabel=UILabel()
    let dateLabel=UILabel()
    let voteLabel=UILabel()
    override func awakeFromNib() {
        super.awakeFromNib()

        // Initialization code
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    init( style: UITableViewCellStyle,reuseIdentifier: String?, image:UIImage, title:String, date:String, votes:Int)
    {
        super.init(style: UITableViewCellStyle.Default, reuseIdentifier: reuseIdentifier)
        videoImageView.image=image
        titleLabel.text=title
        dateLabel.text=date
        voteLabel.text=String(votes)
        videoImageView.frame=CGRectMake(0, 0, self.bounds.height, self.bounds.height)
        videoImageView.layer.cornerRadius=self.bounds.height/2
        videoImageView.layer.masksToBounds=true
        titleLabel.frame=CGRectMake(self.bounds.height, 0, self.bounds.width-self.bounds.height, self.bounds.height/2)
        dateLabel.frame=CGRectMake(self.bounds.height, self.bounds.height/2, self.bounds.width-self.bounds.height, self.bounds.height/2)
        voteLabel.frame=CGRectMake(self.bounds.width-self.bounds.height, 0, self.bounds.width, self.bounds.height)
        self.addSubview(videoImageView)
        self.addSubview(titleLabel)
        self.addSubview(dateLabel)
        self.addSubview(voteLabel)
    }
    required init(coder decoder: NSCoder) {
        super.init(coder: decoder)
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
