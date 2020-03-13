//
//  AddBillViewController.swift
//  C0777726_MidTerm_MAD3115W2020 C0777726_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class AddBillViewController: UIViewController
{

     var customer: Customer?
    
    
    @IBOutlet weak var txtBillID: UITextField!
    @IBOutlet weak var txtBillDate: UITextField!
    @IBOutlet weak var txtIProviderName: UITextField!
    @IBOutlet weak var txtMobManufacturerName: UITextField!
    @IBOutlet weak var txtInternetGBUsed: UITextField!
    @IBOutlet weak var txtPlanName: UITextField!
    @IBOutlet weak var txtMobileNumber: UITextField!
    @IBOutlet weak var txtMobileGBUsed: UITextField!
    @IBOutlet weak var txtMobileMinUsed: UITextField!
    @IBOutlet weak var txtHydroAgencyName: UITextField!
    @IBOutlet weak var txtHydroUnitsUsed: UITextField!
    
    
    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        self.title = "Add New Bill"
    }
    
    @IBAction func btnAddBill(_ sender: Any)
    {
        
    }
    

}
