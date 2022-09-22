//
//  Convert.swift
//
//
//  Created by Jun Meng on 19/9/2022.
//

import Foundation

extension HSBColor {
    
    /// Convert to RGBColor
    var redGreenBlueColor: RGBColor {
        let hueDegrees = Float(self.hueDegrees)
        let unitSaturation = Float(saturationPercent) / 100.0
        let unitBrightness = Float(brightnessPercent) / 100.0

        let c = (1 - abs(2 * unitBrightness - 1)) * unitSaturation
        let x = Float(1 - abs((hueDegrees / 60).truncatingRemainder(dividingBy: 2) - 1)) * c
        let m = unitBrightness - c / 2

        var rgb: (r: Float, g: Float, b: Float) {
            switch hueDegrees {
            case 0 ... 60:
                return (c, x, 0)
            case 60 ... 120:
                return (x, c, 0)
            case 120 ... 180:
                return (0, c, x)
            case 180 ... 240:
                return (0, x, c)
            case 240 ... 300:
                return (x, 0, c)
            case 300 ... 360:
                return (c, 0, x)
            default:
                fatalError()
            }
        }

        return RGBColor(
            red: UInt8((rgb.r + m) * 255),
            green: UInt8((rgb.g + m) * 255),
            blue: UInt8((rgb.b + m) * 255)
        )
    }
}
