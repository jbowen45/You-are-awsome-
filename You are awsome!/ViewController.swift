//
//  ViewController.swift
//  You are awsome!
//
//  Created by James Bowen on 2/13/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var msgLabel: UILabel!
    
    @IBOutlet weak var imageView1: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        msgLabel.text = "You are"    }

    @IBAction func msgButtonPressed(_ sender: UIButton) {
        
       
        if msgLabel.text == "You are awsome!"{
            msgLabel.text = "You are Great!"
            msgLabel.textColor = UIColor.red
            msgLabel.textAlignment = .left
            imageView1.image = UIImage(named: "image0")
        } else {
            msgLabel.text = "You are awsome!"
            msgLabel.textColor = UIColor.blue
            msgLabel.textAlignment = .left
            imageView1.image = UIImage(named: "image3")
        }
        
        
        
    }
    @IBAction func msgButton2Pressed(_ sender: UIButton) {
        msgLabel.text = "You are great!"
        msgLabel.textColor = UIColor.green
        msgLabel.textAlignment = .right
        imageView1.image = UIImage(named: "image1")
    }
    
}

