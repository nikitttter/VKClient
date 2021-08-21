//
//  WordPicker.swift
//  VKClient
//
//  Created by Nikita Yakovlev on 10.08.2021.
//

import UIKit

class CharacterPicker: UIControl {

    private var charSet = Set<Character>()
    private var stackView = UIStackView()
    var selectedChar : Character? {
        willSet {
            for item in stackView.subviews {
                if let label = item as? UILabel {
                    if label.text?.first == selectedChar {
                        label.textColor = .white
                    }
                }
            }
        }
        
        didSet{
            for item in stackView.subviews {
                if let label = item as? UILabel {
                    if label.text?.first == selectedChar {
                        label.textColor = .blue
                    }
                }
            }
        }
    }
    
    var panRecognizer : UIPanGestureRecognizer?
    var panRecognizerAnchorPoint : CGPoint?
    
    var tapGestureRecognizer: UITapGestureRecognizer?
    
    func setup(words : [String]) {
        for word in words {
            if let char = word.first {
                charSet.insert(char)
            }
        }
        
        self.selectedChar = charSet.sorted().first
        
        stackView.alignment = .center
        stackView.spacing = 1.0
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        
        for char in charSet.sorted() {
            
            let label = UILabel()
            label.text = String(char)
            stackView.addArrangedSubview(label)
            
        }
        self.addSubview(stackView)
        invalidateIntrinsicContentSize()

        panRecognizer = UIPanGestureRecognizer(target: self, action: #selector(panHandler(_:)))
        panRecognizer?.maximumNumberOfTouches = 1
        
        tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleTapGesture(_:)))
        tapGestureRecognizer?.numberOfTouchesRequired = 1
        tapGestureRecognizer?.numberOfTapsRequired = 1
        
        self.addGestureRecognizer(panRecognizer!)
        self.addGestureRecognizer(tapGestureRecognizer!)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        stackView.frame = self.bounds
    }
    
     func updateSelectedChar(point : CGPoint ) {
        
        for item in stackView.subviews {
            if item.frame.contains(point) {
                if let label = item as? UILabel {
                    if let selectedChar = self.selectedChar {
                        if (label.text != String(selectedChar)) {
                            print(label.text!)
                            self.selectedChar = label.text?.first
                            self.sendActions(for: .valueChanged)
                        }
                    }
                }
            }
        }
    }
    
    @objc func panHandler(_ gestureRecognizer : UIPanGestureRecognizer) {
        
        switch gestureRecognizer.state {
        case  .began, .changed, .ended:
            panRecognizerAnchorPoint = gestureRecognizer.location(in: self)
        case .cancelled:
            panRecognizerAnchorPoint = nil
        default:
            break
        }
        if let point = panRecognizerAnchorPoint {
            updateSelectedChar(point: point)
        }
    }
    
    @objc func handleTapGesture (_ gestureRecognizer : UITapGestureRecognizer) {
        print(gestureRecognizer.location(in: self))
        updateSelectedChar(point: gestureRecognizer.location(in: self))
    }
    
    override var intrinsicContentSize: CGSize {
        var height : CGFloat = 0.0
        var width : CGFloat = 0.0
        for item in self.stackView.arrangedSubviews {
            height += item.intrinsicContentSize.height
            if  item.intrinsicContentSize.width > width {
                width = item.intrinsicContentSize.width
            }
        }
        self.layer.masksToBounds = true
        self.layer.cornerRadius = width/2
        return CGSize(width: width, height: height)
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

