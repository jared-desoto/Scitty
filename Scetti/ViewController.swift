//
//  ViewController.swift
//  Scetti
//
//  Created by Jared DeSoto on 3/19/17.
//  Copyright © 2017 Jared DeSoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // Mark: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var sampleTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field's user input using delegate callbacks
        nameTextField.delegate = self
    }
    
    // Mark: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        sampleTextLabel.text = textField.text
    }
    
    // Mark: Actions
    @IBAction func SetDefaultLabelTxtTest(_ sender: UIButton) {
        sampleTextLabel.text = "Another practice default Text"

    }
}

