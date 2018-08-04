//
//  SignUpViewController.swift
//  DayOneFirstExample
//
//  Created by Sohel Pasha on 2018-08-03.
//  Copyright © 2018 Sohel Pasha. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtCnfmPassword: UITextField!
    @IBOutlet weak var swRememberMe: UISwitch!
    
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var btnSignUp: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func swClick(_ sender: UISwitch) {
        if sender.isOn{
            print("ON")
        }
        else{
            print("OFF")
        }
    }
    //rename the button,,,sir as
    @IBAction func btnSignupClick(_ sender: UIButton) {
        
//        if swRememberMe.isOn{
//            print("ON")
//        }
//        else{
//            print("OFF")
//        }
        if txtPassword.text == txtCnfmPassword.text{
       
          let myAlert =  UIAlertController(title: "Message", message: "Are You Sure", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "OK", style: .default, handler: {(alert:UIAlertAction)->Void in
                
            })
        
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: {(alert:UIAlertAction)-> Void in
            
            })
        
        myAlert.addAction(okAction)
        myAlert.addAction(cancelAction)
        //show alert dialog using present method of UIViewController
        self.present(myAlert,animated: true,completion: nil)
        
        }
        else
        {
            let myAlert =  UIAlertController(title: "Message", message: "Password Mismatch", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "OK", style: .default, handler: {(alert:UIAlertAction)->Void in
                
            })
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: {(alert:UIAlertAction)-> Void in
                
            })
            
            myAlert.addAction(okAction)
            myAlert.addAction(cancelAction)
            //show alert dialog using present method of UIViewController
            self.present(myAlert,animated: true,completion: nil)
        }
    }
    
}
