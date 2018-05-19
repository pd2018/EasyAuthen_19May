//
//  ViewController.swift
//  EasyAuthen
//
//  Created by PDcode MacbookPRO on 19/5/2561 BE.
//  Copyright © 2561 PDcode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    Explicit
    var userString: String?
    var passwordString: String?
    
    var authenDictionary = ["user1": "p123", "user2":"p223","user3":"p323","user4": "p423"]
    
    var alertString = ["User False", "Password False", "Welcome"]
    
    
    
    @IBOutlet weak var userTextfield: UITextField!
    
    
    
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    
    @IBOutlet weak var ResultLabel: UILabel!
    
    
    @IBAction func loginBtn(_ sender: Any) {
    
//        Get Value From TextField
        userString = userTextfield.text
        passwordString = passwordTextfield.text
        
        print("User ==> \(userString)")
        print("password ==> \(passwordString)")
    
        
        var resultString = authenDictionary[userString!]
        print("resultString ==> \(resultString)")
    
        
        if resultString == nil {
            print("user False")
            ResultLabel.text = alertString[0]
        } else if (passwordString != resultString) {
            ResultLabel.text = alertString[1]
        } else {
            ResultLabel.text = alertString[2]
        }
        
        
        
    }   // loginButtom
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

