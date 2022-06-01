//
//  ViewController.swift
//  Home work # 11
//
//  Created by Mac on 21.11.2021.
//  Copyright © 2021 Mac. All rights reserved.
//

import UIKit


class ViewController: UIViewController, SegmentedControlDelegate {
    @IBOutlet weak var sControl: SegmentedControl!
    
    
    func touch(isButtonLeft: Bool) {
        if isButtonLeft == true {
            print("нажата левая кнопка")
        }else {
            print("нажата правая кнопка")
        }
    }
    
override func viewDidLoad() {
        super.viewDidLoad()
    
    sControl.delegate = self
    
    }
}

