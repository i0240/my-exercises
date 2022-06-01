//
//  ViewController.swift
//  Home work # 10
//
//  Created by Mac on 22.11.2021.
//  Copyright © 2021 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pictures = [UIImage(named: "pic1"), UIImage(named: "pic2"), UIImage(named: "pic3"), UIImage(named: "pic4"), UIImage(named: "pic5"),UIImage(named: "pic6")]
    
    var oldPrice = ["10 990", "15 900", "23 999", "35 499", "7 390", "12 899"]
    
    var newPrice = ["7 693", "10 335", "14 399", "19 524", "5 524", "10 964"]
    
    var names = ["куртка1", "куртка2", "куртка3", "куртка4", "куртка5" ,"куртка6"]
    
    var persent = ["-30%", "-35%", "-40%", "-45%", "-25%", "-15%"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return names.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! NameCollectionViewCell
        cell.picturesView.image = pictures[indexPath.row]
        cell.oldPriceLabel.text = oldPrice[indexPath.row]
        cell.newPriceLabel.text = newPrice[indexPath.row]
        cell.namesLabel.text = names[indexPath.row]
        cell.persentLabel.text = persent[indexPath.row]
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        let w = UIScreen.main.bounds.size.width / 2
        return CGSize(width: w, height: w)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
    }
}
