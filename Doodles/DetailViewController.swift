//
//  DetailViewController.swift
//  Doodles
//
//  Created by Holland, Samuel B. on 12/3/19.
//  Copyright © 2019 Holland, Samuel B. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    
    @IBOutlet var nameTextField: UITextField!
  
    
    @IBAction func submitButton(_ sender: Any) {
        
        guard let name = nameTextField.text else { return }
        ItemStore.sharedInstance.createItem(name: name)
        
        
        
        navigationController?.popViewController(animated: true)
    }
    
    
}
