//
//  FriendsTableViewCell.swift
//  VKClient
//
//  Created by Nikita Yakovlev on 27.02.2021.
//

import UIKit

@IBDesignable class FriendsTableViewCell: UITableViewCell {

    @IBOutlet var userName: UILabel!
    @IBOutlet var userStatus: UILabel!
    @IBOutlet var userCity: UILabel!
    @IBOutlet var userPicture: IconView! {
        didSet {
     
            self.updateShadowOffset()
            self.updateShadowRadius()
            self.updateShadowOpacity()
            self.updateShadowColor()

        }
    }
    
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
    
    @IBInspectable var shadowOffset : CGSize = CGSize(width: 5, height: 5) {
        didSet {
            self.updateShadowOffset()
        }
    }
    
    func updateShadowColor() {
        self.userPicture.layer.shadowColor = self.shadowColor.cgColor
    }
    
    func updateShadowOpacity() {
        self.userPicture.layer.shadowOpacity = self.shadowOpacity
    }
    
    func updateShadowRadius() {
        self.userPicture.layer.shadowRadius = self.shadowRadius
    }
    
    func updateShadowOffset() {
        self.userPicture.layer.shadowOffset = self.shadowOffset

    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    func fillCell(name: String, pic: UIImage?, status: String?, city : String?) {
        userName.text = name
        userStatus.text = status
        userCity.text = city
        userPicture.userPic?.image = pic
    }
    
    override func layoutIfNeeded() {
        super.layoutIfNeeded()
        
        self.userPicture.layer.masksToBounds = false
        self.userPicture.backgroundColor = .gray
        self.userPicture.layer.cornerRadius = self.userPicture.frame.size.width/2
        self.userPicture.userPic?.layer.masksToBounds = true
        self.userPicture.userPic?.backgroundColor = .gray
        self.userPicture.userPic?.layer.cornerRadius = self.userPicture.frame.size.width/2
    }
    
}
