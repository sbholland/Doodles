//
//  ItemStore.swift
//  Doodles
//
//  Created by Holland, Samuel B. on 12/2/19.
//  Copyright © 2019 Holland, Samuel B. All rights reserved.
//

import Foundation

class ItemStore {
    
    var allItems: [Item] = []
    
//    var name: String?
//    var dateCreated: String?
//    var style: String?
    
    static let sharedInstance: ItemStore = {
        let instance = ItemStore()
        return instance
    }()
    
    func createItem(name: String, style: String, dateCreated: String, hoursSpent: Int, materialsUsed: Int) {
        let newItem = Item(name: name , style: style, dateCreated: dateCreated, hoursSpent: hoursSpent, materialsUsed: materialsUsed)
        
        
        allItems.append(newItem)
        
        
        
        
    }
}
