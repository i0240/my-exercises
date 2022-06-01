//
//  ViewController.swift
//  Home work # 13
//
//  Created by Mac on 12.01.2022.
//  Copyright © 2022 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var myView: UIView!

    var degree = CGFloat.pi / 180
    var carrentIndex = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstLabel.text = "1"
        UIView.animate(withDuration: 2, delay: 0, options: UIView.AnimationOptions(), animations:{ self.myView.backgroundColor = UIColor.yellow}, completion:{ _ in self.myView.backgroundColor = UIColor.red})
    }
    @IBAction func nextVC(_ sender: Any) {
        carrentIndex += 1
        if carrentIndex < 1 {carrentIndex = 7}
        else if carrentIndex > 7 {carrentIndex = 1}
        
        switch carrentIndex {
        case 1: firstLabel.text = "1"
        UIView.animate(withDuration: 2, delay: 0, options: UIView.AnimationOptions(), animations:{ self.myView.backgroundColor = UIColor.yellow}, completion:{ _ in self.myView.backgroundColor = UIColor.red})
            
        case 2: firstLabel.text = "2"
        UIView.animate(withDuration: 2, delay: 0, options: UIView.AnimationOptions(), animations:{ self.myView.frame = CGRect(x: 195, y: 20, width: 180, height: 180)}, completion:{ _ in self.myView.frame = CGRect(x: 97.5, y: 55, width: 180, height: 180)})
            
        case 3: firstLabel.text = "3"
        let animation = CABasicAnimation(keyPath: "cornerRadius")
        animation.fromValue = NSNumber(value: 0)
        animation.toValue = NSNumber(value: Float(self.myView.bounds.size.width / 2))
        animation.duration = 2
        self.myView.layer.add(animation, forKey: "cornerRadius")
        self.myView.layer.cornerRadius = self.myView.bounds.size.width / 2
        self.myView.layer.cornerRadius = 0
            
        case 4: firstLabel.text = "4"
        UIView.animate(withDuration: 2, delay: 0, options: UIView.AnimationOptions(), animations: {self.myView.transform = CGAffineTransform(rotationAngle: CGFloat.pi)}, completion: {_ in self.myView.transform = .identity})
            
        case 5: firstLabel.text = "5"
        myView.alpha = 1
        UIView.animate(withDuration: 2, delay: 0, options: UIView.AnimationOptions(), animations:{ self.myView.alpha = 0}, completion:{ _ in self.myView.alpha = CGFloat(1)})
        
        case 6: firstLabel.text = "6"
        UIView.animate(withDuration: 2, delay: 0, options: UIView.AnimationOptions(), animations:{ self.myView.bounds.size.width = 360
            self.myView.bounds.size.height = 360}, completion: { _ in
                self.myView.bounds.size.width = 180
            self.myView.bounds.size.height = 180})
        
        default: firstLabel.text = "7"
        UIView.animate(withDuration: 2, delay: 0, options: UIView.AnimationOptions(), animations: {
            self.myView.transform = CGAffineTransform(rotationAngle: self.degree)
            self.degree += CGFloat.pi / 180}, completion: { _ in
                self.myView.transform = .identity
                })
        }
}
    @IBAction func previousVC(_ sender: Any) {
       carrentIndex -= 1
        if carrentIndex < 1 {carrentIndex = 7}
        else if carrentIndex > 7 {carrentIndex = 1}
        switch carrentIndex {
        case 1: firstLabel.text = "1"
        UIView.animate(withDuration: 2, delay: 0, options: UIView.AnimationOptions(), animations:{ self.myView.backgroundColor = UIColor.yellow}, completion:{ _ in self.myView.backgroundColor = UIColor.red})
            
        case 2: firstLabel.text = "2"
        UIView.animate(withDuration: 2, delay: 0, options: UIView.AnimationOptions(), animations:{ self.myView.frame = CGRect(x: 195, y: 20, width: 180, height: 180)}, completion:{ _ in self.myView.frame = CGRect(x: 97.5, y: 55, width: 180, height: 180)})
            
        case 3: firstLabel.text = "3"
        let animation = CABasicAnimation(keyPath: "cornerRadius")
        animation.fromValue = NSNumber(value: 0)
        animation.toValue = NSNumber(value: Float(self.myView.bounds.size.width / 2))
        animation.duration = 2
        self.myView.layer.add(animation, forKey: "cornerRadius")
        self.myView.layer.cornerRadius = self.myView.bounds.size.width / 2
        self.myView.layer.cornerRadius = 0
            
        case 4: firstLabel.text = "4"
        UIView.animate(withDuration: 2, delay: 0, options: UIView.AnimationOptions(), animations: {self.myView.transform = CGAffineTransform(rotationAngle: CGFloat.pi)}, completion: {_ in self.myView.transform = .identity})
            
        case 5: firstLabel.text = "5"
        myView.alpha = 1
        UIView.animate(withDuration: 2, delay: 0, options: UIView.AnimationOptions(), animations:{ self.myView.alpha = 0}, completion:{ _ in self.myView.alpha = CGFloat(1)})
            
        case 6: firstLabel.text = "6"
        UIView.animate(withDuration: 2, delay: 0, options: UIView.AnimationOptions(), animations:{ self.myView.bounds.size.width = 360
            self.myView.bounds.size.height = 360}, completion: { _ in
                self.myView.bounds.size.width = 180
                self.myView.bounds.size.height = 180})
            
        default: firstLabel.text = "7"
        UIView.animate(withDuration: 2, delay: 0, options: UIView.AnimationOptions(), animations: {
            self.myView.transform = CGAffineTransform(rotationAngle: self.degree)
            self.degree += CGFloat.pi / 180}, completion: { (isComplete) in
                self.degree += CGFloat.pi / 180})
        }
    }
}
