//
//  SecondViewController.swift
//  Home work # 10
//
//  Created by Mac on 21.11.2021.
//  Copyright © 2021 Mac. All rights reserved.
//

import UIKit
struct Table{
   
    var options = ""
    var image = [UIImage(named:"")]
    var configurates:[String] = []
}

class TableV{
    static func tables() -> [Table]{
        return [
            Table(options: "", image: [UIImage(named: "airplane mode")], configurates: ["Авиарежим"]),
            Table(options: " ",image: [UIImage(named: "wi-fi"), UIImage(named: "bluetooth"), UIImage(named: "mobile data"), UIImage(named: "personal hotspot")], configurates: ["Wi-Fi","Bluetooth","Сотовая связь","Режим модема"]),
            Table(options: " ",image: [UIImage(named: "notifications"), UIImage(named: "sounds"), UIImage(named: "do not disturb"), UIImage(named: "screen time")], configurates: ["Уведомления","Звуки,тактильные сигналы","Не беспокоить","Экранное время"]),
            Table(options: " ",image: [UIImage(named: "general"), UIImage(named: "control centre")], configurates: ["Основные","Пункт управления"])
        ]
    }
}
class SecondViewController: UIViewController {
  
    var tables = TableV.tables()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
    extension SecondViewController: UITableViewDataSource, UITableViewDelegate{
        
        func numberOfSections(in tableView: UITableView) -> Int {
            return tables.count
        }
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
                return tables[section].configurates.count
            }
        func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            return tables[section].options
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
            if indexPath.section == 0 {
                if indexPath.row == 0 {
                    let cells = tableView.dequeueReusableCell(withIdentifier: "tableCell") as! FirstTableViewCell
                    cells.firstLabel.text = "Авиарежим"
                    cells.firstImage.image = UIImage(named: "airplane mode")
                    return cells
                }else {
                let cells = tableView.dequeueReusableCell(withIdentifier: "tableCells") as! TableViewCell
                let n = tables[indexPath.section].configurates[indexPath.row]
                let m = tables[indexPath.section].image[indexPath.row]
                cells.nameTabelLabel.text = n
                cells.ImageView.image = m
                return cells
            }
        } else {
            let cells = tableView.dequeueReusableCell(withIdentifier: "tableCells") as! TableViewCell
            let n = tables[indexPath.section].configurates[indexPath.row]
            let m = tables[indexPath.section].image[indexPath.row]
            cells.nameTabelLabel.text = n
            cells.ImageView.image = m
                return cells
            }
    }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true)
        }
}

