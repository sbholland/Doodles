//
//  Item.swift
//  Doodles
//
//  Created by Holland, Samuel B. on 12/2/19.
//  Copyright © 2019 Holland, Samuel B. All rights reserved.
//

import Foundation

class  Item: NSObject {
    
    var name: String
    var style: String
    var dateCreated: String

    
    init(name: String, style: String, dateCreated: String)  {
        self.name = name
        self.style = style
        self.dateCreated = dateCreated
        
    }
}
