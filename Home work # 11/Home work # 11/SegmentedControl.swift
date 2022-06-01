//
//  SegmentedControl.swift
//  Home work # 11
//
//  Created by Mac on 07.12.2021.
//  Copyright © 2021 Mac. All rights reserved.
//

import UIKit

protocol SegmentedControlDelegate {
    func touch(isButtonLeft: Bool)
}

@IBDesignable class SegmentedControl: UIView {
    
var delegate: SegmentedControlDelegate?
    
    var firstButton: UIButton
    var secondButton: UIButton
    
    
    init() {
          firstButton = UIButton()
         secondButton = UIButton()
        
    firstButton.frame = CGRect(x: 78, y: 49, width: 46, height: 30)
    secondButton.frame = CGRect(x: 132, y: 49, width: 46, height: 30)
        
        super.init(frame: .zero)
        
        self.addSubview(firstButton)
        self.addSubview(secondButton)
        
        backgroundColor = UIColor.white
        layer.borderColor = UIColor.yellow.cgColor
        tintColor = UIColor.red
        
        firstButton.addTarget(self,action: #selector(didTapFirst),
                              for:.touchUpInside)
        
        secondButton.addTarget(self,action: #selector(didTapSecond),
                               for:.touchUpInside)
        
    }
    required init?(coder aDecoder: NSCoder) {
        
        self.firstButton = UIButton()
        self.secondButton = UIButton()
        
        firstButton.frame = CGRect(x: 78, y: 49, width: 46, height: 30)
        secondButton.frame = CGRect(x: 124, y: 49, width: 46, height: 30)
        
        super.init(coder: aDecoder)
        
        self.addSubview(firstButton)
        self.addSubview(secondButton)
        
        backgroundColor = UIColor.white
        layer.borderColor = UIColor.yellow.cgColor
        tintColor = UIColor.red
        
        firstButton.addTarget(self,action: #selector(didTapFirst),
                              for:.touchUpInside)
        
        secondButton.addTarget(self,action: #selector(didTapSecond),
                               for:.touchUpInside)
    }
    
    
@IBInspectable var firstBColor: UIColor = UIColor.yellow{
        didSet { firstButton.layer.borderColor = firstBColor.cgColor }
    }
@IBInspectable var secondBColor: UIColor = UIColor.yellow{
        didSet { secondButton.layer.borderColor = secondBColor.cgColor }
    }
@IBInspectable var selectedColor: UIColor = UIColor.red{
        didSet { firstButton.backgroundColor = selectedColor }
    }
@IBInspectable var unselectedColor: UIColor = UIColor.white{
        didSet { secondButton.backgroundColor = unselectedColor }
    }
@IBInspectable var firstText: String = "" {
    didSet { firstButton.setTitle(firstText, for: .normal) }
    }
@IBInspectable var secondText: String = "" {
        didSet { secondButton.setTitle(secondText, for: .normal) }
    }
    
    
    @objc func didTapFirst() {
        firstButton.backgroundColor = selectedColor; secondButton.backgroundColor = unselectedColor
       
        delegate?.touch(isButtonLeft: true)
    }
    @objc func didTapSecond() {
        firstButton.backgroundColor = unselectedColor; secondButton.backgroundColor = selectedColor
        
        delegate?.touch(isButtonLeft: false)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        firstButton.backgroundColor = selectedColor
        secondButton.backgroundColor = unselectedColor
        firstButton.setTitle(firstText, for: .normal)
        secondButton.setTitle(secondText, for: .normal)
        firstButton.layer.borderColor = firstBColor.cgColor
        secondButton.layer.borderColor = secondBColor.cgColor
    }
}

