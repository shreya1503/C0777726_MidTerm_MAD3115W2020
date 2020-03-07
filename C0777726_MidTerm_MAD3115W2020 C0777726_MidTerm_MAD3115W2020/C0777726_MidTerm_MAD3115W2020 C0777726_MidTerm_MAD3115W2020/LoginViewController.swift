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

    override func viewDidLoad()
    {
        super.viewDidLoad()
              
       // RememberMe()
    }

    
       
    @IBAction func btnLogin(_ sender: UIBarButtonItem)
    {
        let alertController = UIAlertController(title: "ERROR", message: "Check Your Email ID Or Password", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Invalid Email Or Password", style: .default	))

        self.present(alertController, animated: true, completion: nil)
        
        
        if txtEmail.text == "admin" && txtPassword.text == "admin123"
        {
            print(txtEmail)
        }
    }
    
    
    
}
