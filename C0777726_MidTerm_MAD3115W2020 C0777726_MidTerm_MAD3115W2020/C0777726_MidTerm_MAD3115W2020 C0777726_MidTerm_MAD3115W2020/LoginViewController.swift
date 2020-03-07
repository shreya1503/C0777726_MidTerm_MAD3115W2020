//
//  ViewController.swift
//  C0777726_MidTerm_MAD3115W2020 C0777726_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-05.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController
{
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!

    @IBOutlet weak var switchRemember: UISwitch!
    override func viewDidLoad()
    {
        super.viewDidLoad()
              
       // RememberMe()
    }

    private func RememberMe()
    {
        let userDefault = UserDefaults.standard
        
        if let userName = userDefault.string(forKey: "Email")
        {
            txtEmail.text = userName
            
            if let pwd = userDefault.string(forKey: "Password")
            {
                txtPassword.text = pwd
            }
        }
    }
       
    @IBAction func btnLogin(_ sender: UIBarButtonItem)
    {
        
               if self.txtEmail.text == "Shreya@gmail.com" && self.txtPassword.text == "Shreya123"
                {
                    let userDefault = UserDefaults.standard
                   if switchRemember.isOn
                    {
                        
                        userDefault.setValue(txtEmail.text, forKey: "Email")
                        userDefault.set(txtPassword.text, forKey: "Password")
                    }
                    else
                    {
                        userDefault.removeObject(forKey: "Email")
                        userDefault.removeObject(forKey: "Password")
                    }
                }
                else
                {
                    let alertController = UIAlertController(title: "ERROR", message: "Check Your Email ID Or Password", preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: "Invalid Email Or Password", style: .default))

                    self.present(alertController, animated: true, completion: nil)

                }
    }
    
    @IBAction func unWindLogoutFromAnyScreen(storyboardSegue: UIStoryboardSegue)
    {
      print("Logout")
    }
}
