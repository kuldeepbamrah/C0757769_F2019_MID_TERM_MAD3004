//
//  main.swift
//  C0757769_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

let formatter = DateFormatter()
formatter.dateFormat = "yyyy/MM/dd"
let date1 = formatter.date(from: "2019/08/01")?.dateformatter()
let date2 = formatter.date(from: "2019/08/11")?.dateformatter()
let date3 = formatter.date(from: "2019/09/13")?.dateformatter()
var i = Internet(providerName: "Freedom", dataConsumed: 45.7, billId: "I001", billDate: date1!, billAmount: 56.7, billType: Bill.billTypes.Internet)
i.printDetails()





