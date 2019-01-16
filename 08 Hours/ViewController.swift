//
//  ViewController.swift
//  08 Hours
//
//  Created by Molly Gehring on 1/15/19.
//  Copyright © 2019 Molly Gehring. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var groceryText: UITextField!
    @IBOutlet weak var groceryTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textField.becomeFirstResponder()
        label.text = "What can you do with 8 Hours?"
        groceryTextView.delegate = self //have class viewController handle events for the grocery Text view
    }

    @IBAction func addItem(_ sender: Any) {
        if let text = groceryText.text, text != "" {
            groceryTextView.text.append("\(text)\n")
            groceryText.text = ""
            groceryText.resignFirstResponder()
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        groceryText.resignFirstResponder()
    }
    
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
        textField.resignFirstResponder()
        return false //avoid default behavior and block text view from being editable
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

