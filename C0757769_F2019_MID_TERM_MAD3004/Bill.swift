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
    enum Types {
        case Internet
        case Hydro
        case Mobile
    }
    var billType : Types
    var totalBillAmount : Float = 0
    
    
    
    
    
    
    
    
    func printDetails() {
        
    }
    
    
}
