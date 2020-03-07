//
//  AddNewCustomerViewController.swift
//  C0777726_MidTerm_MAD3115W2020 C0777726_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class AddNewCustomerViewController: UIViewController
{

    @IBOutlet weak var txtCustomerEmail: UITextField!
    @IBOutlet weak var txtCustomerlastName: UITextField!
    @IBOutlet weak var txtCustomerfirstName: UITextField!
    @IBOutlet weak var txtCustomerId: UITextField!
    
     var newCustomer:[Customer] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

    }

   
    @IBAction func btnAddRecord(_ sender: UIButton)
    {
        
            let newCustomerId = txtCustomerId.text ?? ""
            let newCustomerFirstName = txtCustomerfirstName.text ?? ""
            let newCustomerLastName = txtCustomerlastName.text ?? ""

            
            let newCustomerEmailId = txtCustomerEmail.text ?? ""
            
            if txtCustomerId.text == ""
            {
                AlertMessage(message: "Enter customer ID")
            }
            else if txtCustomerfirstName.text == ""
            {
               AlertMessage(message: "Enter Customer First name ")
            }
            else if txtCustomerlastName.text == ""
            {
                AlertMessage(message: "Enter Customer Last name")
            }
            else if txtCustomerEmail.text == "" || txtCustomerEmail.text?.emailValid() == false
            {
                AlertMessage(message: "Enter Customer Valid EmailID")
            }
            else
            {                
                SingletonData.getInstance().addCustomer(customer: Customer(customerID: newCustomerId, firstName: newCustomerFirstName, lastName: newCustomerLastName, emailID: newCustomerEmailId))
            }
    }
    
    func AlertMessage(message: String)
    {
        let alert = UIAlertController(title: "Sorry", message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
    
}
