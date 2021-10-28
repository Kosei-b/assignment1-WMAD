//
//  FriendsViewController.swift
//  WMAD_PRE
//
//  Created by Kosei Ban on 2021-10-27.
//

import UIKit

class FriendsViewController : UITableViewController {
    
    let friends: [ (String, [FriendModel])] = [
        ("A", [FriendModel(name: "ABBBB", location: "Vancouver")]),
        ("B", [FriendModel(name: "BABBB", location: "Vancouver")]),
        ("C", [FriendModel(name: "CABBB", location: "Vancouver")]),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return friends.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends[section].1.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return friends[section].0
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "firendsRow", for: indexPath) as! FriendsRow
        
        let array = friends[indexPath.section].1
        cell.nameLabel.text = array[indexPath.row].name
        cell.location.text = array[indexPath.row].location
        return cell
    
    }
    
    
}





