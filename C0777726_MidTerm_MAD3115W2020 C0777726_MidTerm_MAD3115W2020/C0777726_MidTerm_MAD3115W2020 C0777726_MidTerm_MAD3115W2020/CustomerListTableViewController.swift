//
//  CustomerListTableViewController.swift
//  C0777726_MidTerm_MAD3115W2020 C0777726_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-05.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class CustomerListTableViewController: UIViewController {

    @IBOutlet weak var tblCustomer: UITableView!
    
    var customerNames : [Customer] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        customerNames = SingletonData.getInstance().getAllCustomers()
        let userDefault = UserDefaults.standard
         
    }
    
}
extension CustomerListTableViewController: UITableViewDataSource, UITableViewDelegate
{
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return customerNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomerCell")

        let customer = customerNames[indexPath.row]
        cell?.textLabel?.text = customer.fullName

        return cell!
    }
   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let c = customerNames[indexPath.row]
        print(c.fullName)
        self.performSegue(withIdentifier: "segueBillDetails", sender: self)


    }

}
