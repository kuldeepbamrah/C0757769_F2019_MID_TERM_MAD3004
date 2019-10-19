//
//  Mobile.swift
//  C0757769_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Mobile : Bill

{
    var manufacturerName:String
    var planName:String
    var mobileNumber:String
    var internetUsage:Float
    var minutes:Int
    
    init(manufacturerName:String,planName:String,mobileNumber:String,internetUsed:Float,minutes:Int,billAmount:Float,billId : String,billType : billTypes,billDate: String) {
        self.manufacturerName=manufacturerName
        self.planName=planName
        self.mobileNumber=mobileNumber
        self.internetUsage=internetUsed
        self.minutes=minutes
        super.init(billId: billId, billDate: billDate, billType: billType, billAmount : billAmount)
    }
}
