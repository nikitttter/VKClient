//
//  IconView.swift
//  VKClient
//
//  Created by Nikita Yakovlev on 08.08.2021.
//

import UIKit

class IconView: UIView {
    
    var userPic : UIImageView?
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        self.userPic = UIImageView()
        //userPic?.frame = self.bounds
//        self.userPic!.translatesAutoresizingMaskIntoConstraints  = true
        self.addSubview(self.userPic!)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.userPic = UIImageView()
//        self.userPic!.translatesAutoresizingMaskIntoConstraints  = true
       // userPic?.frame = self.bounds
        self.addSubview(self.userPic!)
        

    }
    
    
//    override var intrinsicContentSize: CGSize {
//        return CGSize(width: userPic!.intrinsicContentSize.width, height: userPic!.intrinsicContentSize.height)
//    }
    override func layoutSubviews() {
        super.layoutSubviews()
        self.userPic?.frame = self.bounds
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
