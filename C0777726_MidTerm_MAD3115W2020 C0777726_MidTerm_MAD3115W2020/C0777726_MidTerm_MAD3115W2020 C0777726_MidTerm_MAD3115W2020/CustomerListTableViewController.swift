//
//  CustomerListTableViewController.swift
//  C0777726_MidTerm_MAD3115W2020 C0777726_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-05.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class CustomerListTableViewController: UITableViewController {

    @IBOutlet weak var tblCustomer: UITableView!
    
    var customerNames : [Customer] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        customerNames = SingletonData.getInstance().getAllCustomers()
        let userDefault = UserDefaults.standard
        
    }
    
    }
