//
//  ViewController.swift
//  08 Hours
//
//  Created by Molly Gehring on 1/15/19.
//  Copyright © 2019 Molly Gehring. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textField.becomeFirstResponder()
        label.text = "What can you do with 8 Hours?"
    }
    @IBAction func buttonWasTapped(_ sender: Any) {
        label.text = "Hello \(textField.text!)"
        textField.resignFirstResponder()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

