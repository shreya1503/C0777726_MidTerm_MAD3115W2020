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
  
}
