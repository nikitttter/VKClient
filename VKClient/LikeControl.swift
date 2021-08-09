//
//  LikeControl.swift
//  VKClient
//
//  Created by Nikita Yakovlev on 19.05.2021.
//

import UIKit

@IBDesignable class LikeControl : UIControl, UIGestureRecognizerDelegate {
    var numberOfLikes : Int = 0 {
        didSet {
            numLabel.text = String(numberOfLikes)
            numLabel.textColor = meLiked ? UIColor.red : UIColor.blue
        }
    }
    
     var meLiked : Bool = false{
        didSet {
            pic.image = meLiked ? UIImage(systemName: "heart.fill") : UIImage(systemName: "heart")
            pic.tintColor =  meLiked ? UIColor.red : UIColor.blue
            numberOfLikes += meLiked ? 1 : -1
            self.invalidateIntrinsicContentSize()
        }
    }
    
    var numLabel : UILabel!
    var pic : UIImageView!
    
    var tapGestureRecognizer : UITapGestureRecognizer!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)


    }
    
    func setup(number likes : Int = 0, me liked : Bool = false) {
        if (numLabel != nil || pic != nil){
            self.numLabel.removeFromSuperview()
            self.pic.removeFromSuperview()
        }
        
        pic = UIImageView()

        numLabel = UILabel()
        numLabel.font = UIFont.systemFont(ofSize: 23)
        
        self.meLiked = liked
        self.numberOfLikes = likes
        
        pic.translatesAutoresizingMaskIntoConstraints  = false
        numLabel.translatesAutoresizingMaskIntoConstraints  = false
        
        self.addSubview(self.pic)
        self.addSubview(self.numLabel)
        
        self.addConstraint(pic.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0))
        self.addConstraint(pic.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0))
        self.addConstraint(pic.topAnchor.constraint(equalTo: self.topAnchor, constant: 0))
        
        self.addConstraint(numLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0))
        self.addConstraint(numLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0))
        self.addConstraint(numLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 0))
        
        tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(onTap))
        tapGestureRecognizer.numberOfTapsRequired = 1
        tapGestureRecognizer.numberOfTouchesRequired = 1
        tapGestureRecognizer.delegate = self
        addGestureRecognizer(tapGestureRecognizer)
        
        
        self.backgroundColor = .white.withAlphaComponent(0.7)
        self.layer.cornerRadius = self.frame.size.width/8
        self.layer.masksToBounds = true
    }
    
    @objc func onTap() {
        meLiked  = !meLiked
        self.sendActions(for: .valueChanged)
    }
    

    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: pic.intrinsicContentSize.width + numLabel.intrinsicContentSize.width, height: numLabel.intrinsicContentSize.height)
    }
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRequireFailureOf otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }

    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailBy otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return false
    }
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return false
    }
}
