//
//  DataRepo.swift
//  C0777726_MidTerm_MAD3115W2020 C0777726_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-07.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class SingletonData
{
   private static let singletonInstance = SingletonData()
    
    private lazy var custList: [String: Customer] = [:]

    private init(){}

    static func getInstance() -> SingletonData
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
    
    var c1 = Customer(customerID : "C001", firstName : "Shreya", lastName : "Vaghasia", emailID : "Shreya@gmail.com")
  
    var c2 = Customer(customerID : "C002", firstName : "Charmi", lastName : "Patel", emailID : "Charmi123@gmail.com")
    
    var c3 = Customer(customerID : "C003", firstName : "Shree", lastName : "Marella", emailID : "Shree657@gmail.com")
    
    var c4 = Customer(customerID : "C004", firstName : "Avani", lastName : "Patel", emailID : "Avani98@yahoo.com")
    
    var c5 = Customer(customerID : "C005", firstName : "Manish", lastName : "Pawar", emailID : "Manish34@gmail.com")
    
    
    func loadData()
    {
        
        
    }
    
}
