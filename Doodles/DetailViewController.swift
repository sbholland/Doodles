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
    @IBOutlet var styleTextField: UITextField!
    @IBOutlet var dateCreatedTextField: UITextField!
    
    @IBAction func submitButton(_ sender: Any) {
        
        guard let name = nameTextField.text else { return }
        guard let style = styleTextField.text else { return }
        guard let dateCreated = dateCreatedTextField.text else {return}
        
        ItemStore.sharedInstance.createItem(name: name, style: style, dateCreated: dateCreated)
        
        
        
        
        
        navigationController?.popViewController(animated: true)
    }
    
    
}
