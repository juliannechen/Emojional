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
    
    let custommessages = [
        "crying" : "don't live in the past! we are here and ",
        "awkward" : "no one will remember this event! you got this queen"
        ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(sender: UIButton) {
        let alertController = UIAlertController()
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    
    }


}

