import Foundation

public extension HSBColor {
    /// Initializes a new Color struct with the provided HSV color parameters
    ///
    /// - parameter hueUnit: The 360 degrees hue represented as Float from 0.0 to 1.0
    /// - parameter saturationUnit: The saturation represented as Float from 0.0 to 1.0
    /// - parameter brightnessUnit: The brightness represented as Float from 0.0 to 1.0
    /// - returns: `HSVColor` struct
    init(
        @Clamped(0 ... 1) hueUnit: Float,
        @Clamped(0 ... 1) saturationUnit: Float,
        @Clamped(0 ... 1) brightnessUnit: Float
    ) {
        hue = UInt16(Float(UInt16.max) * max(0, min(hueUnit, 1)))
        saturation = UInt16(Float(UInt16.max) * max(0, min(saturationUnit, 1)))
        brightness = UInt16(Float(UInt16.max) * max(0, min(brightnessUnit, 1)))
    }
}

public extension HSBColor {
    var unitHue: Float {
        get { Float(hue) / Float(UInt16.max) }
        set { hue = UInt16(Float(UInt16.max) * max(0, min(newValue, 1))) }
    }

    var unitSaturation: Float {
        get { Float(saturation) / Float(UInt16.max) }
        set { saturation = UInt16(Float(UInt16.max) * max(0, min(newValue, 1))) }
    }

    var unitBrightness: Float {
        get { Float(brightness) / Float(UInt16.max) }
        set { brightness = UInt16(Float(UInt16.max) * max(0, min(newValue, 1))) }
    }
}

public extension HSBColor {
    var hueDegrees: UInt16 {
        hue
    }

    var saturationPercent: UInt16 {
        saturation
    }

    var brightnessPercent: UInt16 {
        brightness
    }
}
