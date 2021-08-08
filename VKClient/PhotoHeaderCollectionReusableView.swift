//
//  PhotoHeaderCollectionReusableView.swift
//  VKClient
//
//  Created by Nikita Yakovlev on 07.03.2021.
//

import UIKit

class PhotoHeaderCollectionReusableView: UICollectionReusableView {

    @IBOutlet var container: UIView! {
        didSet {
            container.backgroundColor = UIColor.lightGray
            container.clipsToBounds = true
            container.layer.cornerRadius = container.frame.width/4
            
        }
    }
    @IBOutlet var albumName: UILabel! {
        didSet {
            albumName.backgroundColor = UIColor.lightGray
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}
