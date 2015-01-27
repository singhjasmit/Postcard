//
//  ViewController.swift
//  Postcard
//
//  Created by Jasmit Singh on 1/26/15.
//  Copyright (c) 2015 Test Org. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var msgLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMsgTextField: UITextField!

    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // comment 
        msgLabel.text = enterMsgTextField.text
        msgLabel.hidden = false
        msgLabel.textColor = UIColor.redColor()
        
        enterMsgTextField.text = ""
        enterMsgTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }

}

