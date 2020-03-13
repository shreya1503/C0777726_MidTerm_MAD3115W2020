//
//  Bill.swift
//  C0777726_MidTerm_MAD3115W2020 C0777726_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-12.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

enum BillType
{
    case INTERNET, MOBILE, HYDRO, INSURANCE
}

class Bill : CalculateBill
{
    var billID : String
    var billDate : Date
    var billType : BillType
    var billAmount : Double = 0.0
    
    init(billID : String, billDate : Date, billType : BillType)
    {
        self.billID = billID
        self.billDate = billDate
        self.billType = billType
    }
    
    func calculateTotalBill() -> Double
    {
        return 0.0
    }
}
