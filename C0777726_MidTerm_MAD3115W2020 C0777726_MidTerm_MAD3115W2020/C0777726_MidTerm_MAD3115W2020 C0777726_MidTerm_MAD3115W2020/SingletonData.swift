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
    
    
    var m1 = Mobile(billID: "MOB001", billDate: Date.from(year: 2017, month: 11, day: 25) ?? Date(), billType: BillType.MOBILE, mobileManufacturerName: "Galaxy S7", planName: "Prepaid Talk + Text plan", mobileNumber: "+1(597)-963-9874", internetGBUsed: 4.0, minuteUsed: 258)

       var m2 = Mobile(billID: "MOB002", billDate: Date.from(year: 2019, month: 06, day: 14) ?? Date(), billType: BillType.MOBILE, mobileManufacturerName: "Apple", planName: "Prepaid + Text plan + International Calls", mobileNumber: "6475581028", internetGBUsed: 6.0, minuteUsed: 159)
    

    
    var i1 = Internet(billID: "INT001", billDate: Date.from(year: 2018, month: 05, day: 24) ?? Date(), billType: BillType.INTERNET, providerName: "Bell", internetGBUsed: 550.0)
    var i2 = Internet(billID: "INT002", billDate: Date.from(year: 2019, month: 12, day: 16) ?? Date(), billType: BillType.INTERNET, providerName: "Virgin", internetGBUsed: 250)
    var i3 = Internet(billID: "INT003", billDate: Date.from(year: 2017, month: 01, day: 29) ?? Date(), billType: BillType.INTERNET, providerName: "Chart", internetGBUsed: 123)


    var h1 = Hydro(billID: "HYD001", billDate: Date.from(year: 2016, month: 12, day: 23) ?? Date(), billType: BillType.HYDRO, agencyName: "Planet Energy", unitConsumed: 59)
    var h2 = Hydro(billID: "HYD002", billDate: Date.from(year: 2020, month: 11, day: 25) ?? Date(), billType: BillType.HYDRO, agencyName: "Home Plan", unitConsumed: 85)
    
    func loadData()
    {
        
        c1.addBill(bill: m1, billID: m1.billID)
        c1.addBill(bill: h1, billID: h1.billID)
        c1.addBill(bill: i1, billID: i1.billID)
               
        c2.addBill(bill: h2, billID: m2.billID)
        c2.addBill(bill: m2, billID: i2.billID)
        
    }
    
}
