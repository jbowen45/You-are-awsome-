//
//  ViewController.swift
//  You are awsome!
//
//  Created by James Bowen on 2/13/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var msgLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad has run!")
        msgLabel.text = "You are"    }

    @IBAction func msgButtonPressed(_ sender: UIButton) {
        print("😎The message button was pressed!")
        msgLabel.text = "You are awsome!"
        msgLabel.textColor = UIColor.red
        
    }
    @IBAction func msgButton2Pressed(_ sender: UIButton) {
        msgLabel.text = "You are great!"
        msgLabel.textColor = UIColor.green
        
    }
    
}

