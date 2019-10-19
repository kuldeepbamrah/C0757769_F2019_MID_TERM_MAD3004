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
    var internetUsed:Float
    var minutesUsed:Int
    
    init(manufacturerName:String,planName:String,mobileNumber:String,internetUsed:Float,minutesUsed:Int,billAmount:Float,billId : String,billType : Types,billDate: String) {
        self.manufacturerName=manufacturerName
        self.planName=planName
        self.mobileNumber=mobileNumber
        self.internetUsed=internetUsed
        self.minutesUsed=minutesUsed
        super.init(billId: billId, billDate: billDate, billType: billType, billAmount : billAmount)
    }
}
