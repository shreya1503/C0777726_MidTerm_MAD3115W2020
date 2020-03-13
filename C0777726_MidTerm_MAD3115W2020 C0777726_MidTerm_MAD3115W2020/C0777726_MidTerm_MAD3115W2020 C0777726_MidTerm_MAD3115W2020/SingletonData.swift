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
    
    
//    var m1 = Mobile(billID: "MOB001", billDate: Date.from(year: 2019, month: 01, day: 20) ?? Date(), billType: BillType.MOBILE, mobileManufacturerName: "Galaxy S7", planName: "Prepaid Talk + Text plan", mobileNumber: "+1(597)-963-9874", internetGBUsed: 5.0, minuteUsed: 356)
//
//       var m2 = Mobile(billID: "MOB002", billDate: Date.from(year: 2018, month: 08, day: 15) ?? Date(), billType: BillType.MOBILE, mobileManufacturerName: "Apple", planName: "Prepaid + Text plan + International Calls", mobileNumber: "6475581028", internetGBUsed: 2.0, minuteUsed: 250)
    
    func loadData()
    {
        
        
    }
    
}
