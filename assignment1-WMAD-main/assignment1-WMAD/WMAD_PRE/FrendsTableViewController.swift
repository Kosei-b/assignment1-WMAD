//
//  FrendsTableViewController.swift
//  WMAD_PRE
//
//  Created by Kosei Ban on 2021-10-25.
//

import UIKit

class FrendsTbableController: UITableViewController {
    
    let friends: [String] = [
    "Kosei",
    "Ben",
    "Aimee",
    "Takafumi",
    "Kotaro",
    "Mostafa",
    "Alireza",
    "Fumiya",
    "Paul",
    "Sandy",
    "Shopei",
        
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellidentifer")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "cellidentifer")
        
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cellidentifer")
        }
        cell?.textLabel?.text = friends[indexPath.row]
            
        return cell!
        }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("cell is section \(indexPath.section) and low \(indexPath.row) is tapped")
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Header for Section \(section + 1)"
    }
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "Footer for Section \(section + 1)"
        
    }
    }
    
