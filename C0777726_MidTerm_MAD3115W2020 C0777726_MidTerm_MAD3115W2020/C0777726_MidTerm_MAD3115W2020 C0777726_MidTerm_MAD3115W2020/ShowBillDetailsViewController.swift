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

        self.lblCustID.text = customer?.customerID
        self.lblCustFirstName.text = customer?.firstName
        self.lblCustLastName.text = customer?.lastName
        self.lblCustEmail.text = customer?.emailID
    }
    

   
}
