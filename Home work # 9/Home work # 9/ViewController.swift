//
//  ViewController.swift
//  Home work # 9
//
//  Created by Mac on 09.11.2021.
//  Copyright © 2021 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var labelHeighConstraint: NSLayoutConstraint!
     var lines = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func tappedButton(_ sender: Any) {
   
        if lines == 1{
            lines += 1
            labelHeighConstraint.constant *= 5
            view.layoutIfNeeded()
        }
        else {
            lines -= 1
            labelHeighConstraint.constant /= 5
            view.layoutIfNeeded()
        }
    }
    

}

