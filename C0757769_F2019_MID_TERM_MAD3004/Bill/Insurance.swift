//
//  Insurance.swift
//  C0757769_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Insurance : iPrintable
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
    
    init(provider : String, Itype : Itypes, startDate : String, endDate : String)
    {
        
        self.provider = provider
        self.Itype = Itype
        self.startDate = startDate
        self.endDate = endDate
        
    }
    
    func printDetails() {
        <#code#>
    }
    
    
}
