//
//  signInVC.swift
//  Ethagram
//
//  Created by pp1285 on 2016/2/25.
//  Copyright © 2016年 EthanChou. All rights reserved.
//

import UIKit

class signInVC: UIViewController {

    //textfield
    @IBOutlet weak var passwordTxt: UITextField!
    
    @IBOutlet weak var usernameTxt: UITextField!
    
    //buttons
    @IBOutlet weak var signInBtn: UIButton!
    
    @IBOutlet weak var signUpBtn: UIButton!
    
    @IBOutlet weak var forgotBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    //clicked sign in button
    @IBAction func signInBtnclick(sender: AnyObject) {
        print("sign in pressed")
    }

}
