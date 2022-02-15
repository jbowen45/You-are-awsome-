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
    
    var imageNumber = 0
    var messageNumber = 0
    var totalNumberOfImages = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        msgLabel.text = "You are"    }

    @IBAction func msgButtonPressed(_ sender: UIButton) {
        let messages = [ "You are awsome",
                         "You are great",
                         "You are fantastic",
                         "Fabulous? that's you"]
        
        var newMessage = messages[Int.random(in: 0...messages.count-1)]
        while newMessage == msgLabel.text{
            print("*** We had a repeating value")
            newMessage = messages[Int.random(in: 0...messages.count-1)]
        }
        msgLabel.text = newMessage
        
        var newImage = UIImage(named: "image\(Int.random(in: 0...totalNumberOfImages))")
        
        while newImage == imageView1.image{
            print("*** We had a repeating image")
            newImage = UIImage(named: "image\(Int.random(in: 0...totalNumberOfImages))")
        }
                
        imageView1.image = newImage
        
        
//        print (imageNumber)
//        //let imageName = "image" + String(imageNumber) //This line and next convert int to string
//        let imageName = "image\(imageNumber)"
//        imageView1.image = UIImage(named: imageName)
//        imageNumber = imageNumber + 1
//        if imageNumber == 10{
//            imageNumber = 0
//        }
//
//        msgLabel.text = messages[messageNumber]
//        messageNumber += 1
//        if messageNumber > messages.count - 1 {
//            messageNumber = 0
//        }
        
            //        if msgLabel.text == "You are awsome!"{
            //            msgLabel.text = "You are Great!"
            //            msgLabel.textColor = UIColor.red
            //            msgLabel.textAlignment = .left
            //            imageView1.image = UIImage(named: "image0")
            //        } else {
            //            msgLabel.text = "You are awsome!"
            //            msgLabel.textColor = UIColor.blue
            //            msgLabel.textAlignment = .left
            //            imageView1.image = UIImage(named: "image3")
            //        }
        
        
        
        
    }
    @IBAction func msgButton2Pressed(_ sender: UIButton) {
        msgLabel.text = "You are great!"
        msgLabel.textColor = UIColor.green
        msgLabel.textAlignment = .right
        imageView1.image = UIImage(named: "image1")
    }
    
}

