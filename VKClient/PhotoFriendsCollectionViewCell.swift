//
//  PhotoFriendsCollectionViewCell.swift
//  VKClient
//
//  Created by Nikita Yakovlev on 27.02.2021.
//

import UIKit

class PhotoFriendsCollectionViewCell: UICollectionViewCell {


    @IBOutlet var userPic: UIImageView! 
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //userPic.contentMode = .scaleAspectFill
    }

}
