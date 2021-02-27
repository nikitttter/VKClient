//
//  FriendsTableViewCell.swift
//  VKClient
//
//  Created by Nikita Yakovlev on 27.02.2021.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {

    @IBOutlet var userPic: UIImageView! {
        didSet {
            userPic.layer.cornerRadius = userPic.frame.size.width/2
            userPic.clipsToBounds = true
            userPic.backgroundColor = UIColor.gray
        }
    }
    @IBOutlet var userName: UILabel!
    @IBOutlet var userStatus: UILabel!
    @IBOutlet var userCity: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
