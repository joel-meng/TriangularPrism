import Foundation

/// Representation of a RGB colour
public struct RGBColor: Hashable, Codable {
    // MARK: Lifecycle

    /// Initialise a color with RGB colors range from 0...255
    /// - Parameters:
    ///   - red: Red, 0 ... 255
    ///   - green: Green, 0 ... 255
    ///   - blue: Blue, 0 ... 255
    public init(red: UInt8, green: UInt8, blue: UInt8) {
        self.red = red
        self.green = green
        self.blue = blue
    }

    // MARK: Public

    public internal(set) var red: UInt8
    public internal(set) var green: UInt8
    public internal(set) var blue: UInt8
}
