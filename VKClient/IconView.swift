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
        self.addSubview(self.userPic!)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.userPic = UIImageView()
        self.addSubview(self.userPic!)

    }
    
    override func layoutSubviews() {
        userPic?.frame = self.bounds
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
