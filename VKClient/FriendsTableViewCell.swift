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
    
    func fillCell(name: String, pic: UIImage?, status: String?, city : String?) {
        userName.text = name
        userPic.image = pic
        userStatus.text = status
        userCity.text = city
    }
}
