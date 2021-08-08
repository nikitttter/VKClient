//
//  PhotoFriendsCollectionViewCell.swift
//  VKClient
//
//  Created by Nikita Yakovlev on 27.02.2021.
//

import UIKit

class PhotoFriendsCollectionViewCell: UICollectionViewCell {


    @IBOutlet var userPic: UIImageView! 
    @IBOutlet var likeControl: LikeControl!
    
    var indexPath : IndexPath?
    var data : [UserPhotos?]?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        likeControl.addTarget(self, action: #selector(changeLikeState), for: .valueChanged)
    }
        
    @objc func changeLikeState(){
        
        if let myData = data {
            if let index = indexPath {
                myData[index.section]?.photos[index.item].liked = likeControl.meLiked
                myData[index.section]?.photos[index.item].numLikes = likeControl.numberOfLikes
            }
        }
    }
}
