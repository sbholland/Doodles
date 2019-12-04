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
    @IBOutlet var hoursSpentTextField: UITextField!
    @IBOutlet var materialsUsedTextField: UITextField!
    
    
    @IBAction func submitButton(_ sender: Any) {
        
        guard let name = nameTextField.text else { return }
        guard let style = styleTextField.text else { return }
        guard let dateCreated = dateCreatedTextField.text else {return}
        guard let hoursSpent = hoursSpentTextField.text else {return}
        guard let materialsUsed = materialsUsedTextField.text else {return}
        
//        ItemStore.sharedInstance.createItem(name: name, style: style, dateCreated: dateCreated, hoursSpent: Int(hoursSpent)!)
        
        if hoursSpentTextField.text?.isEmpty ?? true || materialsUsedTextField.text?.isEmpty ?? true {
            print("enter a number for hours spent and materials used")
        } else {
            ItemStore.sharedInstance.createItem(name: name, style: style, dateCreated: dateCreated, hoursSpent: Int(hoursSpent)!, materialsUsed: Int(materialsUsed)!)
            navigationController?.popViewController(animated: true)
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
    }
    
    //Calls this function when the tap is recognized.
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    
    
    
}







//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        textField.resignFirstResponder()
//
//        return true
//    }
