//
//  ViewController.swift
//  DayOneFirstExample
//
//  Created by Sohel Pasha on 2018-08-02.
//  Copyright © 2018 Sohel Pasha. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var txtUserEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var lblMsg: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblMsg.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnLoginClick(_ sender: UIButton) {
            //txtUserEmail.text
            // txtPassword.text
        lblMsg.isHidden = false
        if txtUserEmail.text == "admin@a.com" && txtPassword.text == "s3cr3t"{
        lblMsg.text = "VALID"
            lblMsg.textColor = UIColor.green
        }
        else
        {
            lblMsg.text = "INVALID"
            lblMsg.textColor = UIColor.red
        }
    }
    
    @IBAction func btnSignUpF(_ sender: UIBarButtonItem) {
        
    }
}

