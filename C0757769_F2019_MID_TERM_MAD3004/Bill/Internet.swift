//
//  Internet.swift
//  C0757769_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Internet : Bill
{
    
    
    var providerName : String
    var dataConsumed : Float
    
    init(providerName : String, dataConsumed : Float, billId : String, billDate : String,billAmount: Float, billType : Bill.billTypes)
    {
        self.providerName = providerName
        self.dataConsumed = dataConsumed
        super.init(billId: billId, billDate: billDate, billType: billType,billAmount: billAmount)
    }
    
    override func printDetails()
    {
        print("*************************************************************")
        print("Bill Id : \(billId)")
        print("Bill Type : \(billType)")
        print("Bill Date : \(billDate)")
        print("Provider Name : \(providerName)")
        print("Data Consumed : \(dataConsumed.insertGB())")
        print("Bill Amount : \(totalBillAmount.currFormat())")
        
        
    }
    
    
}
