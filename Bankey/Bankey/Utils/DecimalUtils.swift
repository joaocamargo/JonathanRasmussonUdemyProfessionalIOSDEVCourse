//
//  DecimalUtils.swift
//  Bankey
//
//  Created by joao camargo on 22/06/22.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal: self).doubleValue
    }
}
