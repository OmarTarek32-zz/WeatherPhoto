//
//  FacncyCircularButton.swift
//  Salamtak
//
//  Created by boudy ashraf on 10/23/17.
//  Copyright © 2017 boudy ashraf. All rights reserved.
//

import UIKit

@IBDesignable public class FacncyCircularButton: UIButton {
    
    fileprivate var mainLayer = CAShapeLayer()
    
    fileprivate var animationGroup = CAAnimationGroup()
    
    @IBInspectable public var pulseColor: UIColor = UIColor.gray
    
    @IBInspectable public var pulseRadius: CGFloat = 1
    
    @IBInspectable public var pulseDuration: CGFloat = 0.5
    
    @IBInspectable public var buttonColor: UIColor {
        get {
            return UIColor(cgColor: layer.backgroundColor ?? UIColor.white.cgColor)
        }
        
        set {
            layer.backgroundColor = newValue.cgColor
        }
    }
    
    @IBInspectable public var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        
        set {
            layer.cornerRadius = newValue
        }
    }
    
    @IBInspectable var roundedButton: Bool = false {
        didSet {
            if roundedButton {
                layer.cornerRadius = frame.size.width / 2
                layer.masksToBounds = true
                clipsToBounds = true
            }
            else{
                layer.cornerRadius = cornerRadius
                layer.masksToBounds = cornerRadius > 0
                layer.masksToBounds = false
                clipsToBounds = false
            }
        }
        
    }

    
    public init(frame: CGRect, backgroundColor: UIColor) {
        super.init(frame: frame)
        buttonColor = backgroundColor
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    override public func draw(_ rect: CGRect) {
        super.draw(rect)
        setup()
    }
    
    override public func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        
        let pulse = createPulse()
        
        self.layer.insertSublayer(pulse, below: self.mainLayer)
        
        DispatchQueue.global(qos: DispatchQoS.QoSClass.default).async {
            self.createAnimationGroup()
            
            DispatchQueue.main.async {
                pulse.add(self.animationGroup, forKey: "pulse")
            }
        }
    }
    
    fileprivate func setup() {
        mainLayer.backgroundColor = buttonColor.cgColor
        mainLayer.bounds = self.bounds
        mainLayer.cornerRadius = cornerRadius
        mainLayer.position = CGPoint(x: frame.width/2, y: frame.height/2)
        mainLayer.zPosition = -1
        
        self.layer.addSublayer(mainLayer)
    }
    
    fileprivate func createPulse() -> CAShapeLayer {
        let pulse = CAShapeLayer()
        pulse.backgroundColor = pulseColor.cgColor
        pulse.contentsScale = UIScreen.main.scale
        pulse.bounds = self.bounds
        pulse.cornerRadius = cornerRadius
        pulse.position = CGPoint(x: frame.width/2, y: frame.height/2)
        pulse.zPosition = -2
        pulse.opacity = 0
        
        return pulse
    }
    
    fileprivate func createAnimationGroup() {
        animationGroup.animations = [createScaleAnimation(), createOpacityAnimation()]
        animationGroup.duration = CFTimeInterval(pulseDuration)
    }
    
    fileprivate func createScaleAnimation() -> CABasicAnimation {
        let scaleAnimation = CABasicAnimation(keyPath: "transform.scale.xy")
        
        scaleAnimation.fromValue = 1
        scaleAnimation.toValue = (pulseRadius/10) + 1.0
        scaleAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        
        return scaleAnimation
    }
    
    fileprivate func createOpacityAnimation() -> CAKeyframeAnimation {
        let opacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
        
        opacityAnimation.values = [0.8, 0.4, 0]
        opacityAnimation.keyTimes = [0, 0.5, 1]
        opacityAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        
        return opacityAnimation
    }
    
}
