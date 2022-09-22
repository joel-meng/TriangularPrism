//
//  RGBColor+Convert.swift
//  
//
//  Created by Jun Meng on 18/9/2022.
//

import Foundation

extension RGBColor {
    var hex: UInt32 {
        UInt32(red) << 16 + UInt32(green) << 8 + UInt32(blue) << 0
    }
}
