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
    @IBOutlet weak var txtInternetGBUsed: UITextField!
    @IBOutlet weak var txtPlanName: UITextField!
    @IBOutlet weak var txtMobManufacturerName: UITextField!
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
    
    @IBAction func segBillType(_ sender: UISegmentedControl)
    {
        
        if sender.selectedSegmentIndex == 0
        {
            
            txtIProviderName.isHidden = true
            txtInternetGBUsed.isHidden = true
            txtPlanName.isHidden = true
            txtMobileGBUsed.isHidden = true
            txtMobileGBUsed.isHidden = true
            txtMobileNumber.isHidden = true
            txtMobManufacturerName.isHidden = true
            
        }
        
        else if sender.selectedSegmentIndex == 1
        {
            
            txtInternetGBUsed.isHidden = true
            txtIProviderName.isHidden = true
            txtHydroUnitsUsed.isHidden = true
            txtHydroAgencyName.isHidden = true
            
        }
        
        else if sender.selectedSegmentIndex == 2
        {
            
            txtHydroAgencyName.isHidden = true
            txtHydroUnitsUsed.isHidden = true
            txtPlanName.isHidden = true
            txtMobileGBUsed.isHidden = true
            txtMobileGBUsed.isHidden = true
            txtMobileNumber.isHidden = true
            txtMobManufacturerName.isHidden = true
            
            
        }
        
    }
    
    
    @IBAction func btnAddBill(_ sender: Any)
    {
        
    }
    

}
