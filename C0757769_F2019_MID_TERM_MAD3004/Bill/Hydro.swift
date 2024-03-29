//
//  Hydro.swift
//  C0757769_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation


class Hydro : Bill
{
    
    var agencyName:String
    var unitsConsumed: Float
    
    init(agencyName:String,unitsConsumed:Float,billAmount : Float,billId : String,billType : Bill.billTypes,billDate : String)
    {
        self.agencyName=agencyName
        self.unitsConsumed=unitsConsumed
        super.init(billId: billId, billDate: billDate, billType: billType,billAmount: billAmount)
        
    }
    
    override func printDetails() {
        
        print("*************************************************************")
        print("Bill Id : \(billId)")
        print("Bill Type : \(billType)")
        print("Bill Date : \(billDate)")
        print("Agency Name : \(agencyName)")
        print("Unit Consumed : \(unitsConsumed.insertUnits())")
        print("Bill Amount : \(totalBillAmount.currFormat())")
    }
}
