//
//  ViewController.swift
//  Doodles
//
//  Created by Holland, Samuel B. on 11/25/19.
//  Copyright © 2019 Holland, Samuel B. All rights reserved.
//

import UIKit

class ItemsViewController: UITableViewController {

    var itemStore: ItemStore!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
            tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ItemStore.sharedInstance.allItems.count
    }
    
    override func tableView(_ tableView: UITableView,
        cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create an instance of UITableViewCell, with default appearance
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell",
            for: indexPath) as! ItemCell
        
        
        cell.nameLabel?.text = ItemStore.sharedInstance.allItems[indexPath.row].name
        cell.styleLabel?.text = ItemStore.sharedInstance.allItems[indexPath.row].style
        cell.dateCreatedLabel?.text = ItemStore.sharedInstance.allItems[indexPath.row].dateCreated
        
        
        // Set the text on the cell with the description of the item
        // that is at the nth index of items, where n = row this cell
        // will appear in on the tableview
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            // remove the item from the data model
            ItemStore.sharedInstance.allItems.remove(at: indexPath.row)
            
            // delete the table view row
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        } else if editingStyle == .insert {
            // Not used in our example, but if you were adding a new row, this is where you would do it.
        }
    }



    
}
