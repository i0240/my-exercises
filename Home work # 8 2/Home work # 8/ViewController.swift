//
//  ViewController.swift
//  Home work # 8
//
//  Created by Mac on 12.10.2021.
//  Copyright © 2021 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pictureImageView: UIImageView!
    
    let pictures = [UIImage(named:"pic1"),UIImage(named:"pic2"),UIImage(named:"pic3"),UIImage(named:"pic4"),UIImage(named:"pic5"),UIImage(named:"pic6"),UIImage(named:"pic7"),UIImage(named:"pic8"),UIImage(named:"pic9"),UIImage(named:"pic10")]
    var carrentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pictureImageView.image = UIImage(named:"pic2")
    }
    @IBAction func next(_ sender: Any) {
        carrentIndex += 1
        pictureImageView.image = pictures [carrentIndex % pictures.count]
    }
    @IBAction func back(_ sender: Any) {
        carrentIndex -= 1
        pictureImageView.image = pictures [carrentIndex % pictures.count]
    }
}

