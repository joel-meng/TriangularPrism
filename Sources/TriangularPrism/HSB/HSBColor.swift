import Foundation

// MARK: - HSBColor

public struct HSBColor: Hashable, Codable {
    // MARK: Lifecycle

    public init(
        @Clamped(0 ... 360) hueDegrees: UInt16,
        @Clamped(0 ... 100) saturationPercent: UInt16,
        @Clamped(0 ... 100) brightnessPercent: UInt16
    ) {
        hue = hueDegrees
        saturation = saturationPercent
        brightness = brightnessPercent
    }

    // MARK: Public

    public internal(set) var hue: UInt16
    public internal(set) var saturation: UInt16
    public internal(set) var brightness: UInt16
}

