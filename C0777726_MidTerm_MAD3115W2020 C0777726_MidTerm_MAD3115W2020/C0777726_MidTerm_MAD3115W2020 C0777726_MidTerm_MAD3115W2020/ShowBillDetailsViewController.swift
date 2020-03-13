//
//  ShowBillDetailsViewController.swift
//  C0777726_MidTerm_MAD3115W2020 C0777726_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-07.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ShowBillDetailsViewController: UIViewController
{
    
    var customer : Customer?
    
    @IBOutlet weak var lblCustID: UILabel!
    @IBOutlet weak var lblCustEmail: UILabel!
    @IBOutlet weak var lblCustLastName: UILabel!
    @IBOutlet weak var lblCustFirstName: UILabel!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

    
    }
    
    @IBAction func btnViewBills(_ sender: Any)
    {
        if customer?.bills.count != 0
        {
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let DetailedBillVC = sb.instantiateViewController(identifier: "DetailedBillVC") as DetailedBillViewController
            DetailedBillVC.customer = self.customer
            navigationController?.pushViewController(DetailedBillVC, animated: true)
        }
        else
        {
            AlertMessage(message: "Selected Customer Has No Bills")
        }
        
    }
    
    func showSelectedCustomerDetails()
    {
        guard let customerID = self.customer?.customerID else
        {
            return
        }
        guard let firstName = self.customer?.firstName else
        {
            return
        }
        guard let lastName = self.customer?.lastName else
        {
            return
        }
        guard let customerEmail = self.customer?.emailID else
        {
            return
        }
        
        lblCustID.text = "ID : \(customerID)"
        lblCustFirstName.text = "First Name : \(firstName)"
        lblCustLastName.text = "Last Name : \(lastName)"
        lblCustEmail.text = "Email ID : \(customerEmail)"
        
    }
    
    func AlertMessage(message: String)
       {
           let alert = UIAlertController(title: "Try Again", message: message, preferredStyle: .alert)
           let okButton = UIAlertAction(title: "Dismiss", style: .default, handler: nil)
           alert.addAction(okButton)
           self.present(alert, animated: true)
           
       }
   
}
