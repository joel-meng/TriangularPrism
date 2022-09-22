import Foundation

public extension RGBColor {
    /// Initializes a new Color struct with the provided RGB color parameters
    ///
    /// - parameter redUnit: Red component represented as Float from 0.0 to 1.0
    /// - parameter greenUnit: Green component represented as Float from 0.0 to 1.0
    /// - parameter blueUnit: The blue component represented as Float from 0.0 to 1.0
    /// - returns: `RGBColor` struct
    init(
        @Clamped(0 ... 1) redUnit: Float,
        @Clamped(0 ... 1) greenUnit: Float,
        @Clamped(0 ... 1) blueUnit: Float
    ) {
        red = UInt8(Float(UInt8.max) * max(0, min(redUnit, 1)))
        green = UInt8(Float(UInt8.max) * max(0, min(greenUnit, 1)))
        blue = UInt8(Float(UInt8.max) * max(0, min(blueUnit, 1)))
    }
}

public extension RGBColor {
    var unitRed: Float {
        get { Float(red) / Float(UInt8.max) }
        set { red = UInt8(Float(UInt8.max) * max(0, min(newValue, 1))) }
    }

    var unitGreen: Float {
        get { Float(green) / Float(UInt8.max) }
        set { green = UInt8(Float(UInt8.max) * max(0, min(newValue, 1))) }
    }

    var unitBlue: Float {
        get { Float(blue) / Float(UInt8.max) }
        set { blue = UInt8(Float(UInt8.max) * max(0, min(newValue, 1))) }
    }
}
