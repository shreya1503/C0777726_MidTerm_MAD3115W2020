//
//  Hydro.swift
//  C0777726_MidTerm_MAD3115W2020 C0777726_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-12.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Hydro: Bill
{
    var agencyName: String
    var unitConsumed: Int
    var ratePerUnit: Double = 20.0

    init(billID : String, billDate : Date, billType : BillType, agencyName : String, unitConsumed : Int)
    {
        self.agencyName = agencyName
        self.unitConsumed = unitConsumed
        super.init(billID : billID, billDate : billDate, billType : billType)
        self.billAmount = calculateTotalBill()
    }
    
    override func calculateTotalBill() -> Double
    {
        self.billAmount = Double(unitConsumed) * ratePerUnit
        return billAmount
    }

}
