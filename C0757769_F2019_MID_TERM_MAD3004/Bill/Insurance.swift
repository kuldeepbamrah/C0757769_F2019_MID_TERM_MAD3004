//
//  Insurance.swift
//  C0757769_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Insurance : Bill
{
    var provider : String
    enum Itypes {
        case Home
        case Car
        case Business
    }
    var Itype : Itypes
    var startDate : String
    var endDate : String
    var totalAmountyearly : Float!
    
    
    init(provider : String, Itype : Itypes, startDate : String, endDate : String, billId : String, billDate : String,billType : Bill.billTypes, billAmount : Float)
    {
        
        self.provider = provider
        self.Itype = Itype
        self.startDate = startDate
        self.endDate = endDate
        super.init(billId: billId, billDate: billDate, billType: billType, billAmount: billAmount)

        
    }
    
    override func printDetails()
    {
        print("*************************************************************")
        print("Bill Id : \(billId)")
        print("Bill Type : \(billType)")
        print("Bill Date : \(billDate)")
        print("Provider : \(provider)")
        print("Insurance Type : \(Itype)")
        print("Start Date : \(startDate)")
        print("End date : \(endDate)")
        print("Monthly Premium : \(totalBillAmount.currFormat())")
        print("Yearly Premium : \(calYearlypremium().currFormat())")
    }
    
    func calYearlypremium()->Float
    {
        return super.totalBillAmount*12
    }
}
