import Foundation

public extension HSVColor {
    func maxComponentOffset(with color: HSVColor) -> UInt8 {
        [hue - color.hue, saturation - color.saturation, value - color.value].max() ?? 0
    }
}
