//
//  Bill.swift
//  C0757769_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Bill : iPrintable
{
    var billId : String
    var billDate :  String
    enum billTypes {
        case Internet
        case Hydro
        case Mobile
        case Insurance
    }
    var billType : billTypes
    var totalBillAmount : Float = 0
    
    init(billId : String , billDate : String, billType : billTypes, billAmount: Float) {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
        self.totalBillAmount = billAmount
    }
    
    func printDetails() {
        
    }
    
    
}
