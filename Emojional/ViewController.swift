//
//  ViewController.swift
//  Emojional
//
//  Created by Julianne on 5/11/21.
//  Copyright © 2021 Julianne Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let emojis = [
           "😭" : "crying",
           "😅" : "awkward"
       ]
    
    let customMessages = [
        "crying" : ["don't live in the past!", "tomorrow will be better", "here's a hug"],
        "awkward" : ["no one will remember this" , "you got this queen", "shake it off" ]
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(sender: UIButton) {
        
        
        let selectedEmotion = (sender.titleLabel?.text)!
        let messageList = customMessages[emojis[selectedEmotion]!]!
        let num = Int.random(in: 0...2)
        let emojiMessage = messageList[num]

//        let emojiMessage = customMessages[emojis[selectedEmotion!]!]
        
        let alertController = UIAlertController()

        
alertController.addAction(UIAlertAction(title: emojiMessage, style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    
    }


}

