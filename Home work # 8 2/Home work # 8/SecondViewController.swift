//
//  SecondViewController.swift
//  Home work # 8
//
//  Created by Mac on 14.10.2021.
//  Copyright © 2021 Mac. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    let imageNameOne = [UIImage(named: "pic1"),UIImage(named: "pic2"),UIImage(named: "pic3"),UIImage(named: "pic4")]
    
    var currentY: CGFloat = 110
    var currentX: CGFloat = 10
    var labelOneX: CGFloat = 10
    var labelYA: CGFloat = 230
    var labelYB: CGFloat = 250
    var labelYC: CGFloat = 270
    var labelYD: CGFloat = 290
    
    override func viewDidLoad() {
        super.viewDidLoad()
            for i in 0...3 {
                let view = UIImageView(image: imageNameOne[i])
                view.frame = CGRect.init(x: currentX, y: currentY, width: 160, height: 120)
                let labelOne = UILabel()
                let labelTwo = UILabel()
                let labelThree = UILabel()
                let labelFour = UILabel()
               
                labelOne.frame = CGRect.init(x: labelOneX, y: labelYA, width: 70, height: 20)
                labelTwo.frame = CGRect.init(x: labelOneX, y: labelYB, width: 100, height: 20)
                labelThree.frame = CGRect.init(x: labelOneX, y: labelYC, width: 140, height: 20)
                labelFour.frame = CGRect.init(x: labelOneX, y: labelYD, width: 160, height: 20)
                
                labelOne.backgroundColor = .red
                labelTwo.backgroundColor = .gray
                labelThree.backgroundColor = .blue
                labelFour.backgroundColor = .yellow
                
            func views() {
                if i == 0 {currentX += view.frame.width + 10; labelOneX += view.frame.width + 10}
                else if i == 1 {currentY = 340; labelYA += view.frame.height + 110; labelYB += view.frame.height + 110; labelYC += view.frame.height + 110; labelYD += view.frame.height + 110}
                else if i == 2 {currentX = 10; currentY = 340; labelOneX = 10; labelYA = 460; labelYB = 480; labelYC = 500; labelYD = 520}
                else if i == 3 {currentY += view.frame.height + 10; currentX += view.frame.width + 10; labelOneX += view.frame.width + 10; labelYA += view.frame.height + 110; labelYB += view.frame.height + 110; labelYC += view.frame.height + 110; labelYD += view.frame.height + 110}
            }
                
                views()
                self.view.addSubview(view)
                self.view.addSubview(labelOne)
                self.view.addSubview(labelTwo)
                self.view.addSubview(labelThree)
                self.view.addSubview(labelFour)
        }
    }
}

