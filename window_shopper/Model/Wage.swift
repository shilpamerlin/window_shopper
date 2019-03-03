//
//  Wage.swift
//  window_shopper
//
//  Created by Shilpa Joy on 2019-03-02.
//  Copyright © 2019 Shilpa Joy. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forwage wage : Double, andPrice itemPrice : Double) -> Int {
        
        return Int(ceil(itemPrice/wage))
    }
}
