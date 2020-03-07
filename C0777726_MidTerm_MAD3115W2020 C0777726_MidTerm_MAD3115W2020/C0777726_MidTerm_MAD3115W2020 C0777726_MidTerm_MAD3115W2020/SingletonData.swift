//
//  Singleton.swift
//  C0777726_MidTerm_MAD3115W2020 C0777726_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-07.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class SingletonData
{
   private static let singletonInstance = Singleton()
    
    private lazy var custList: [String: Customer] = [:]

    private init(){}

    static func getInstance() -> SingeltonData
    {
        return singletonInstance
    }
    
    func addCustomer(customer: Customer)
    {
        self.custList.updateValue(customer, forKey : customer.customerID)
    }
    
    func getAllCustomers() -> [Customer]
    {
        return Array(custList.values)
    }
  
    func loadData()
    {
        
        custList.updateValue(Customer(customerID : "C001", firstName : "Shreya", lastName : "Vaghasia", emailID : "Shreya@gmail.com"), forKey : "C001")
        custList.updateValue(Customer(customerID : "C002", firstName : "Charmi", lastName : "Patel", emailID : "Charmi123@gmail.com"), forKey : "C002")
        custList.updateValue(Customer(customerID : "C003", firstName : "Shree", lastName : "Marella", emailID : "Shree657@gmail.com"), forKey : "C003")
        custList.updateValue(Customer(customerID : "C004", firstName : "Avani", lastName : "Patel", emailID : "Avani98@yahoo.com"), forKey : "C004")
        custList.updateValue(Customer(customerID : "C005", firstName : "Manish", lastName : "Pawar", emailID : "Manish34@gmail.com"), forKey : "C005")
    }
    
}
