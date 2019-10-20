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
let date4 = formatter.date(from: "2020/08/01")?.dateformatter()


//creating customer Dictionary
var custDictionary = Dictionary<String,Customer>()



//creating bills for customer 1
var i = Internet(providerName: "Freedom", dataConsumed: 45.7, billId: "I001", billDate: date1!, billAmount: 56.7, billType: Bill.billTypes.Internet)
var m = Mobile(manufacturerName: "Apple",modelName : "Iphone 11", planName: "Big Gig", mobileNumber: "123456789", internetUsed: 6.7, minutes: 476, billAmount: 78.6, billId: "m001", billType:Bill.billTypes.Mobile, billDate: date3!)
var h = Hydro(agencyName: "Planet Energy", unitsConsumed: 56.7, billAmount: 150, billId: "H101", billType: Bill.billTypes.Hydro, billDate: date2!)


//creating customer details - 1
var c = Customer(customerId: "C001", firstName: "John ", lastName: "Doe", email: "@gmail.com")

//adding bills for customers
c.addBill(Bill: i)
c.addBill(Bill: m)
c.addBill(Bill: h)
//displaying customer bill detials
//c.printDetails()
//adding customer to customer dictionary
custDictionary.updateValue(c, forKey: c.customerId)

//creating bills for customer 2
var i1 = Internet(providerName: "Rogers", dataConsumed: 100.9, billId: "I001", billDate: date1!, billAmount: 89.5, billType: Bill.billTypes.Internet)
var h1 = Hydro(agencyName: "Planet Energy", unitsConsumed: 67.8, billAmount: 67, billId: "H001", billType: Bill.billTypes.Hydro, billDate: date3!)

//creating customer 2 details
var c1 = Customer(customerId: "C002", firstName: "Richard ", lastName: "Stark", email: "@gmail.com")
c1.addBill(Bill: i1)
c1.addBill(Bill: h1)
//c1.printDetails()

//adding customer to customer dictionary
custDictionary.updateValue(c1, forKey: c1.customerId)



//creating bills for customer 3
var m1 = Mobile(manufacturerName: "Samsung",modelName : "Galaxy S8+", planName: "Big Gig", mobileNumber: "0987654321", internetUsed: 6.7, minutes: 476, billAmount: 78.6, billId: "m001", billType:Bill.billTypes.Mobile, billDate: date3!)

var c2 = Customer(customerId: "C003", firstName: "Peter", lastName: "Parker", email: "peter@gmail.com")
c2.addBill(Bill: m1)
//c2.printDetails()
//adding customer to customer dictionary
custDictionary.updateValue(c2, forKey: c2.customerId)


//creating customer with no bills
var c3 = Customer(customerId: "C004", firstName: "Ritik", lastName: "Jagpal", email: "@gmail.com")
//c3.printDetails()
//adding customer to customer dictionary
custDictionary.updateValue(c3, forKey: c3.customerId)




//creating object for insurance
var ins = Insurance(provider: "HDFC", Itype: Insurance.Itypes.Home, startDate: date1!, endDate: date4!, billId: "INS001", billDate: date1!, billType: Bill.billTypes.Insurance, billAmount: 78.6)
var c4 = Customer(customerId: "C005", firstName: "Honey", lastName: "Bunny", email: "hunny@gmail.com")
c4.addBill(Bill: ins)
c4.printDetails()

//+++++++++++++ Do as Directed+++++++++++++++++++


// 1. displaying all customers Bill details
for i in custDictionary.values{
    i.printDetails()
}


//2. finding cusotmers by customer Id
func getCustomerById(CustomerId: String)
{
    var count = 0
    for (k,v) in custDictionary{
        if CustomerId.elementsEqual(k)
        {
            v.printDetails()
            count = count + 1
        }
        }
    if(count<1)
    {
        print("Customer with Id : \(CustomerId) does not exist")
    }
}
//getCustomerById(CustomerId: "C001")
getCustomerById(CustomerId: "C006")






