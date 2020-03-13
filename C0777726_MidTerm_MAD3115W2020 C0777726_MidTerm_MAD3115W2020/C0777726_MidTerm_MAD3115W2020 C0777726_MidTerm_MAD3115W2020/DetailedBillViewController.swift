//
//  DetailedBillViewController.swift
//  C0777726_MidTerm_MAD3115W2020 C0777726_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-12.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class DetailedBillViewController: UIViewController
{

@IBOutlet weak var lblTotalBill: UILabel!
@IBOutlet weak var tbtBillDetail: UITableView!

      var customer : Customer?
      var bills : [Bill] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        self.bills = customer!.getAllbills()
        //self.navigationItem.hidesBackButton = true
        self.navigationItem.title = "Customer Detailed Bills"
        self.addNewBillButton()
        self.lblTotalBill.text = String(format:"Total Bill $%.2f",customer?.calculateTotalBill() ?? "")

     
    }
    
     private func addNewBillButton()
        {
            let newBillButton = UIBarButtonItem(title: "Add Bill", style: .plain, target: self, action: #selector(self.addNewBill))
            self.navigationItem.rightBarButtonItem = newBillButton
        }
        
        @objc func addNewBill()
        {
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let addBillVC = sb.instantiateViewController(identifier: "AddBillVC") as! AddBillViewController
            addBillVC.customer = self.customer
            navigationController?.pushViewController(addBillVC, animated: true)
        }

    }
    extension DetailedBillViewController: UITableViewDataSource, UITableViewDelegate
    {
        func showAlertMessage(message: String)
        {
            let alert = UIAlertController(title: "Sorry", message: message, preferredStyle: .alert)
            let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true)
            
        }
        func numberOfSections(in tableView: UITableView) -> Int
        {
            return 1
        }
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        {
            return bills.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "DetailBillViewCell") as! BillTableViewCell
            
            let bill = bills[indexPath.row]
            
            if bill.billType == .HYDRO
            {
                cell.imgBill.image = UIImage(named:"hydro-power")
                cell.lblBillID.text = " Bill Id: \(bill.billID)"
                cell.lblBillDate.text = " Bill Date: \(bill.billDate.getForamttedDate())"
                cell.lblBillAmount.text = " Bill Amount: $\(bill.billAmount)"
            }
            else if bill.billType == .INTERNET
            {
                cell.imgBill.image = UIImage(named:"modem")
                cell.lblBillID.text = " Bill Id: \(bill.billID)"
                cell.lblBillDate.text = " Bill Date: \(bill.billDate.getForamttedDate())"
                cell.lblBillAmount.text = " Bill Amount: $\(bill.billAmount)"
            }
            else if bill.billType == .MOBILE
            {
                cell.imgBill.image = UIImage(named:"smartphone")
                cell.lblBillID.text = " Bill Id: \(bill.billID)"
                cell.lblBillDate.text = " Bill Date: \(bill.billDate.getForamttedDate())"
                cell.lblBillAmount.text = " Bill Amount: $\(bill.billAmount)"
            }
            else
            {
                showAlertMessage(message: "No Valid Bill type matched")
            }

            
            
            return cell
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           // let b = bills[indexPath.row]
        }
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
        {
            
            return CGFloat(200.0)
        }
        

}
