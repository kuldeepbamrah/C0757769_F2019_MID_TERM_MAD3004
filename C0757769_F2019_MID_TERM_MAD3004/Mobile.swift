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
    var manufacturerName : String
    var planName : String
    var mobileNumber : String
    var internetUsage : Float
    var minutes : Int
    var model : String
    
    init(manufacturerName:String,modelName : String, planName:String,mobileNumber:String,internetUsed:Float,minutes:Int,billAmount:Float,billId : String,billType : billTypes,billDate: String) {
        self.manufacturerName=manufacturerName
        self.planName=planName
        self.mobileNumber=mobileNumber
        self.internetUsage=internetUsed
        self.minutes=minutes
        self.model = modelName
        super.init(billId: billId, billDate: billDate, billType: billType, billAmount : billAmount)
    }
    
    override func printDetails()
    {
        print("*************************************************************")
        print("Bill Id : \(billId)")
        print("Bill Type : \(billType)")
        print("Bill Date : \(billDate)")
        print("Manufacturer Name : \(manufacturerName)")
        print("Mobile Model : \(model)")
        print("Plan Name : \(planName)")
        print("Mobile number : \(mobileNumber)")
        print("Minutes used : \(minutes)")
        print("Bill Amount : \(totalBillAmount)")
        print("Internet Used : \(internetUsage)")
    }
}
