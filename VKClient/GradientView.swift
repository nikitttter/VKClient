//
//  GradientView.swift
//  VKClient
//
//  Created by Nikita Yakovlev on 16.05.2021.
//

import UIKit

@IBDesignable class GradientView: UIView {
    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    @IBInspectable var gradientLayer : CAGradientLayer {
        return self.layer as! CAGradientLayer
    }
    
    @IBInspectable var startColor : UIColor = .white {
        didSet {
            self.updateColors()
        }
    }
    
    @IBInspectable var middleColor : UIColor = .gray {
        didSet {
            self.updateColors()
        }
    }
    
    @IBInspectable var endColor : UIColor = .black {
        didSet {
            self.updateColors()
        }
    }
    
    @IBInspectable var startLocation : CGFloat = 0 {
        didSet {
            self.updateLocation()
        }
    }
    
    @IBInspectable var middleLocation : CGFloat = 0.5 {
        didSet {
            self.updateLocation()
        }
    }
    
    @IBInspectable var endLocation : CGFloat = 1 {
        didSet {
            self.updateLocation()
        }
    }
    
    @IBInspectable var startPoint : CGPoint = .zero {
        didSet {
            self.updateStartPoint()
        }
    }
    
    @IBInspectable var endPOint : CGPoint = CGPoint(x: 0, y: 1) {
        didSet {
            self.updateEndPOint()
        }
    }
    
    func updateLocation() {
        self.gradientLayer.locations = [self.startLocation as NSNumber, self.middleLocation as NSNumber, self.endLocation as NSNumber]
    }
    
    func updateColors() {
        self.gradientLayer.colors = [self.startColor.cgColor, self.middleColor.cgColor, self.endColor.cgColor]
    }
    
    func updateStartPoint() {
        self.gradientLayer.startPoint = self.startPoint
    }
    
    func updateEndPOint() {
        self.gradientLayer.endPoint = self.endPOint
    }
    
    
    
}
