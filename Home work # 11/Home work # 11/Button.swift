//
//  Button.swift
//  Home work # 11
//
//  Created by Mac on 29.11.2021.
//  Copyright © 2021 Mac. All rights reserved.
//

import UIKit

@IBDesignable class Button: UIButton {
        
        @IBInspectable var borderWidth: CGFloat {
            set {
                layer.borderWidth = newValue
            }
            get {
                return layer.borderWidth
            }
        }
        
        @IBInspectable var cornerRadius: CGFloat {
            set {
                layer.cornerRadius = newValue
            }
            get {
                return layer.cornerRadius
            }
        }
        
        @IBInspectable var borderColor: UIColor? {
            set {
                guard let uiColor = newValue else { return }
                layer.borderColor = uiColor.cgColor
            }
            get {
                guard let color = layer.borderColor else { return nil }
                return UIColor(cgColor: color)
            }
        }
        override func layoutSubviews() {
            super.layoutSubviews()
            
        }
}
