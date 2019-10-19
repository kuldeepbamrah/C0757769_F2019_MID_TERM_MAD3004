//
//  main.swift
//  C0757769_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation


//creating dates
let formatter = DateFormatter()
formatter.dateFormat = "yyyy/MM/dd"
let date1 = formatter.date(from: "2019/08/01")?.dateformatter()
let date2 = formatter.date(from: "2019/09/01")?.dateformatter()
let date3 = formatter.date(from: "2019/10/01")?.dateformatter()


var i = Internet(providerName: "Freedom", dataConsumed: 45.7, billId: "I001", billDate: date1!, billAmount: 56.7, billType: Bill.billTypes.Internet)
//i.printDetails()

var m = Mobile(manufacturerName: "Apple",modelName : "Iphone 11", planName: "Big Gig", mobileNumber: "123456789", internetUsed: 6.7, minutes: 476, billAmount: 78.6, billId: "m001", billType:Bill.billTypes.Mobile, billDate: date3!)
//m.printDetails()

var h = Hydro(agencyName: "Planet Energy", unitsConsumed: 56.7, billAmount: 150, billId: "H101", billType: Bill.billTypes.Hydro, billDate: date2!)
//h.printDetails()

var c = Customer(customerId: "C001", firstName: "John ", lastName: "Doe", email: "@gmail.com")
c.addBill(Bill: i)
c.addBill(Bill: m)
c.addBill(Bill: h)
c.printDetails()



