//
//  ThirdViewController.swift
//  Home work # 8
//
//  Created by Mac on 18.10.2021.
//  Copyright © 2021 Mac. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var thirdView: UIView!
    @IBOutlet weak var mySegmentedControl: UISegmentedControl!
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func mySegmentedControlChange(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            firstView.isHidden = false
            secondView.isHidden = true
            thirdView.isHidden = true
        }
        else if sender.selectedSegmentIndex == 1 {
            firstView.isHidden = true
            secondView.isHidden = false
            thirdView.isHidden = true
        }
        else if sender.selectedSegmentIndex == 2 {
            firstView.isHidden = true
            secondView.isHidden = true
            thirdView.isHidden = false
        }
    }
}
