//
//  signUpVC.swift
//  Ethagram
//
//  Created by pp1285 on 2016/2/25.
//  Copyright © 2016年 EthanChou. All rights reserved.
//

import UIKit

class signUpVC: UIViewController {
    //scrollview
    @IBOutlet weak var scorllView: UIScrollView!
    
    //textfield
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var resetPasswordTxt: UITextField!
    @IBOutlet weak var fullnameTxt: UITextField!
    @IBOutlet weak var bioTxt: UITextField!
    @IBOutlet weak var webTxt: UITextField!
    
    //profile image
    @IBOutlet weak var avaImg: UIImageView!
    
    //buttons
    @IBOutlet weak var signUpBtn: UIButton!
    @IBOutlet weak var cancelBtn: UIButton!
    
    //reset Default size
    var scrollViewHeight : CGFloat = 0
    
    //keyboard frame size
    var keyboard = CGRect()
    
    //defaults func
    override func viewDidLoad() {
        super.viewDidLoad()

        // scorllview frame size
        scorllView.frame = CGRectMake(0, 0, self.view.frame.width, self.view.frame.height)
        scorllView.contentSize.height = self.view.frame.height
        scrollViewHeight = scorllView.frame.size.height
    
        //check notifications if keyboard is shown or not
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "showKeyboard:", name: UIKeyboardWillShowNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "hideKeyboard:", name: UIKeyboardWillHideNotification, object: nil)
        
        
        //declare hide keyboard tap
        let hideTap = UITapGestureRecognizer(target: self, action: "hideKeyboardTap:")
        hideTap.numberOfTapsRequired = 1
        self.view.userInteractionEnabled = true
        self.view.addGestureRecognizer(hideTap)
    }
    
    func hideKeyboardTap(notification: NSNotification) {
        self.view.endEditing(true)
    }

    func showKeyboard(notification: NSNotification) {
        
        print("asdfasdf")
        //define keyboard size
        keyboard = (notification.userInfo?[UIKeyboardFrameEndUserInfoKey]?.CGRectValue)!
        
        //move up UI
        UIView.animateWithDuration(0.4) { () -> Void in
            self.scorllView.frame.size.height = self.scrollViewHeight - self.keyboard.height
            print(self.scorllView.frame.size.height)
        }
        
    }
    
    func hideKeyboard(notification: NSNotification) {

        UIView.animateWithDuration(0.4) { () -> Void in
            //move down UI
            self.scorllView.frame.size.height = self.view.frame.height
            print(self.scorllView.frame.size.height)
        }
    }

    //clicked sign up
    @IBAction func signUpBtn_clicked(sender: UIButton) {
        print("sign up pressed")
    }
   
    //clicked cancel

    @IBAction func cancelBtn_clicked(sender: UIButton) {
        print("cancel pressed")
        self.dismissViewControllerAnimated(true, completion: nil)

    }
}
