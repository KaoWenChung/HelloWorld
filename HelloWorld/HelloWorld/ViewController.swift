//
//  ViewController.swift
//  HelloWorld
//
//  Created by wyn on 2020/3/17.
//  Copyright © 2020 Wyn. All rights reserved.
//

import UIKit


class ViewController: UIViewController {


        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(sender: UIButton){
        let emojiDict: [String: String] = ["👾":"alien",
                                           "👻":"ghost",
                                           "🤓":"dumb",
                                           "🤖":"robot"]
        let selectionButton = sender
        if let wordToLookup = selectionButton.titleLabel?.text{
            let meaning = emojiDict[wordToLookup]
            
            let alertController = UIAlertController(title: "Meaning", message: meaning, preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
        
//        let alertController = UIAlertController(title: "Welcome to my First APP", message: "Hello World", preferredStyle: UIAlertController.Style.alert)
//        alertController.addAction(UIAlertAction(title:"OK", style: UIAlertAction.Style.default,handler: nil))
//        present(alertController, animated: true, completion: nil)
    }

}

