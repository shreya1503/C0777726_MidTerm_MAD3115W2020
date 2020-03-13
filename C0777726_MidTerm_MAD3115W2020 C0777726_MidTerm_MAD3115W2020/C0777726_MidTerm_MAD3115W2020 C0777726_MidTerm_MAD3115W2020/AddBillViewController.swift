//
//  AddBillViewController.swift
//  C0777726_MidTerm_MAD3115W2020 C0777726_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class AddBillViewController: UIViewController, UITextFieldDelegate
{
    @IBOutlet weak var segmentBillType: UISegmentedControl!
    
     var customer: Customer?
    
    
    @IBOutlet weak var txtBillID: UITextField!
    @IBOutlet weak var txtBillDate: UITextField!
    var datePicker : UIDatePicker!
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
        txtBillDate.delegate = self
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    func textFieldDidBeginEditing(_ textField: UITextField)
    {
        self.pickUpDate(self.txtBillDate)
    }
    
    func pickUpDate(_ textField: UITextField)
       {
         
         self.datePicker = UIDatePicker(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 216))
         self.datePicker.backgroundColor = UIColor.white
         self.datePicker.datePickerMode = UIDatePicker.Mode.date
         textField.inputView = self.datePicker
          
        
         let toolBar = UIToolbar()
         toolBar.barStyle = .default
         toolBar.isTranslucent = true
         toolBar.tintColor = .red
         toolBar.sizeToFit()
          
        
         let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(AddBillViewController.doneClick))
         let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
         let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(AddBillViewController.cancelClick))
         toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
         toolBar.isUserInteractionEnabled = true
         textField.inputAccessoryView = toolBar
       }
        
    @objc func doneClick()
     {
       let dateformatter1 = DateFormatter()
       dateformatter1.dateStyle = .medium
       dateformatter1.timeStyle = .none
       txtBillDate.text = dateformatter1.string(from: datePicker.date)
       txtBillDate.resignFirstResponder()
     }
      
     @objc func cancelClick()
     {
       txtBillDate.resignFirstResponder()
     }
    
    @IBAction func segBillType(_ sender: UISegmentedControl)
    {
        
        if sender.selectedSegmentIndex == 0
        {
            
            txtBillID.isHidden = false
            txtBillDate.isHidden = false
            txtHydroAgencyName.isHidden = false
            txtHydroUnitsUsed.isHidden = false
            txtMobManufacturerName.isHidden = true
            txtMobileMinUsed.isHidden = true
            txtMobileNumber.isHidden = true
            txtMobileGBUsed.isHidden = true
            txtPlanName.isHidden = true
            txtIProviderName.isHidden = true
            txtInternetGBUsed.isHidden = true
           
            
        }
        
        else if sender.selectedSegmentIndex == 1
        {
            
            txtBillID.isHidden = false
            txtBillDate.isHidden = false
            txtIProviderName.isHidden = false
            txtInternetGBUsed.isHidden = false
            txtMobManufacturerName.isHidden = true
            txtMobileMinUsed.isHidden = true
            txtMobileNumber.isHidden = true
            txtMobileGBUsed.isHidden = true
            txtPlanName.isHidden = true
            txtHydroAgencyName.isHidden = true
            txtHydroUnitsUsed.isHidden = true
            
            
        }
        
        else if sender.selectedSegmentIndex == 2
        {
            txtBillID.isHidden = false
            txtBillDate.isHidden = false
            txtMobManufacturerName.isHidden = false
            txtMobileMinUsed.isHidden = false
            txtMobileNumber.isHidden = false
            txtMobileGBUsed.isHidden = false
            txtPlanName.isHidden = false
            txtIProviderName.isHidden = true
            txtInternetGBUsed.isHidden = true
            txtHydroAgencyName.isHidden = true
            txtHydroUnitsUsed.isHidden = true
            
        }
        
    }
    
    
    @IBAction func btnAddBill(_ sender: Any)
    {
        if segmentBillType.selectedSegmentIndex == 0
        {
            let tempBillObj = Hydro(billID: txtBillID.text!, billDate: (txtBillDate.text?.toDate())!, billType: BillType.HYDRO, agencyName: txtHydroAgencyName.text!, unitConsumed: Int(txtHydroUnitsUsed.text!) ?? Int(0.0))
            
            customer?.addBill(bill: tempBillObj, billID: txtBillID.text!)
        }
        else if segmentBillType.selectedSegmentIndex == 1
        {
          let addBillObj = Internet(billID: txtBillID.text!, billDate: (txtBillDate.text?.toDate())!, billType: BillType.INTERNET, providerName: txtIProviderName.text!, internetGBUsed: Double(txtInternetGBUsed.text!)!)
                     
                     customer?.addBill(bill:addBillObj, billID: txtBillID.text!)
                 }
                 else if segmentBillType.selectedSegmentIndex == 2
                 
                 {
                     let addBillobj = Mobile(billID: txtBillID.text!, billDate: (txtBillDate.text?.toDate())!, billType: BillType.MOBILE, mobileManufacturerName: txtMobManufacturerName.text!, planName: txtPlanName.text!, mobileNumber: txtMobileNumber.text!, internetGBUsed: Double(txtMobileGBUsed.text!)!, minuteUsed: Int(txtMobileMinUsed.text!)!)
                     
                     customer?.addBill(bill: addBillobj, billID: txtBillID.text!)
                 }
                 
                 let sb = UIStoryboard(name: "Main", bundle: nil)
                 let DetailedBillVC = sb.instantiateViewController(identifier: "DetailedBillVC") as DetailedBillViewController
                 DetailedBillVC.customer = self.customer
                 navigationController?.pushViewController(DetailedBillVC, animated: true)
    }
    
}
