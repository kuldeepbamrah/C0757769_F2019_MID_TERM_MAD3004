//
//  Customer.swift
//  C0757769_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Customer
{
    var customerId : String
    var firstName : String
    var lastName : String!
    var fullName : String
    var email : String
    var billDictionary = Dictionary<String,Bill>()
}
