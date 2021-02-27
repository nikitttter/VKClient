//
//  GroupsTableViewCell.swift
//  VKClient
//
//  Created by Nikita Yakovlev on 27.02.2021.
//

import UIKit

class GroupsTableViewCell: UITableViewCell {
    @IBOutlet var groupPic: UIImageView! {
        didSet {
            groupPic.layer.cornerRadius = groupPic.frame.width / 2
            groupPic.clipsToBounds = true
            groupPic.backgroundColor = UIColor.gray
        }
    }
    @IBOutlet var groupName: UILabel!
    @IBOutlet var groupTheme: UILabel!
    @IBOutlet var groupVerification: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
