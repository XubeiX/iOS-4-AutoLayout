//
//  Wage.swift
//  Window Shopper
//
//  Created by Artur on 14/10/2018.
//  Copyright © 2018 Artur. All rights reserved.
//

import Foundation

class Wage{
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
