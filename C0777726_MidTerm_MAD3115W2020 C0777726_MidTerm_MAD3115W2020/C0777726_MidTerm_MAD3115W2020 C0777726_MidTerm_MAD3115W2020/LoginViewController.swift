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
    
    //@IBOutlet weak var lblRememberMe: UILabel!
    @IBOutlet weak var switchRmbr: UISwitch!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
              
        RememberMe()
    }

    //@IBAction func RememberMe(_ sender: UISwitch) {}
    
    func RememberMe()
    {
        let userDefault =  UserDefaults.standard
        
        if let email = userDefault.string(forKey: "email")
        {
            txtEmail.text = email
            
            if let pass = userDefault.string(forKey: "pass")
            {
                txtPassword.text = pass
            }
        }
    }
    
}
