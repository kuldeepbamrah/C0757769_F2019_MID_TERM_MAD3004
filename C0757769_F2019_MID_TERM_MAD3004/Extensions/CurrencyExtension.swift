//
//  CurrencyExtension.swift
//  C0757769_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
extension Float {
    func currFormat() ->String
    {
        // return "$\(self).00"
        return String(format: "$%0.2f", Float(self))
}
}
