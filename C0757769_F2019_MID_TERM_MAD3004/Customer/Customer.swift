//
//  Customer.swift
//  C0757769_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Customer : iPrintable
{
   
    
    
    
    var customerId : String
    var firstName : String
    var lastName : String
    var email : String
    var billDictionary = Dictionary<String,Bill>()
    
    
    //creating fullname as calculated property
    var fullName : String {
        return "\(firstName) \(lastName)"
    }
    
    
    init(customerId : String, firstName : String, lastName : String, email : String)
    {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
    }
    
    
    //function to validate email
    func testEmail(email: String)
    {
        if email.contains("@gmail.com")
        {
            print("Email is valid")
        }
        else{
            print("Please inpu valid email")
        }
    }
    
    //calculating total bill for a customer 
    var sum : Float = 0
    func calculateTotalBill()-> Float{
        
        for i in billDictionary.values
        {
            sum += i.totalBillAmount
            
        }
        
        return sum
    }
    
    
    func printDetails()
    {
        print("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$")
        print("Customer Id : \(customerId)")
        print("Full Name : \(fullName)")
        print("Email Address: \(email)")
        
        print("-------------------------Billing details---------------------------")
        
        //check if customer has any bills
        if billDictionary.count == 0
        {
            print("Customer has no outstanding Bills")
        }
        else{
        
        //display bill details by iterating through bill dictionary
        for i in billDictionary.values
        {
            i.printDetails()
            
        }
        print("--------------------------------------------------------------------")
        print("Total Bill Amount to Pay: \(calculateTotalBill().currFormat())")
        print("--------------------------------------------------------------------")
        //testEmail(email: email)
    }
    }
    
    
    //function to add bills
    func addBill(Bill : Bill)
    {
        billDictionary.updateValue(Bill, forKey: Bill.billId)
    }
    
}
