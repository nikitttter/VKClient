//
//  FriendsTableViewCell.swift
//  VKClient
//
//  Created by Nikita Yakovlev on 27.02.2021.
//

import UIKit

@IBDesignable class FriendsTableViewCell: UITableViewCell {

    @IBOutlet var userPic: UIImageView! {
        didSet {
            userPic.layer.cornerRadius = userPic.frame.size.width/2
            
            userPic.layer.masksToBounds = true
            
            userPic.backgroundColor = UIColor.gray

        }
    }
    @IBOutlet weak var likes: LikeControl!
    @IBOutlet var userName: UILabel!
    @IBOutlet var userStatus: UILabel!
    @IBOutlet var userCity: UILabel!
    @IBOutlet var shadowPic: UIImageView! {
        didSet {
            shadowPic.layer.cornerRadius = shadowPic.frame.size.width/2
            
            shadowPic.layer.masksToBounds = false
            shadowPic.backgroundColor = UIColor.gray
            
            self.updateShadowOffset()
            self.updateShadowRadius()
            self.updateShadowOpacity()
            self.updateShadowColor()
        }
    }
    @IBOutlet weak var likeControl: LikeControl!
    
    
    
    @IBInspectable   var shadowColor : UIColor = .gray {
        didSet {
            self.updateShadowColor()
        }
    }
    
    @IBInspectable   var shadowOpacity : Float = 1 {
        didSet {
            self.updateShadowOpacity()
        }
    }
    
    @IBInspectable var shadowRadius : CGFloat = 14 {
        didSet {
            self.updateShadowRadius()
        }
    }
    
    @IBInspectable var shadowOffset : CGSize = .zero {
        didSet {
            self.updateShadowOffset()
        }
    }
    
    func updateShadowColor() {
        self.shadowPic?.layer.shadowColor = self.shadowColor.cgColor
    }
    
    func updateShadowOpacity() {
        self.shadowPic?.layer.shadowOpacity = self.shadowOpacity
    }
    
    func updateShadowRadius() {
        self.shadowPic?.layer.shadowRadius = self.shadowRadius
    }
    
    func updateShadowOffset() {
        self.shadowPic?.layer.shadowOffset = self.shadowOffset
    }
    
    
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
