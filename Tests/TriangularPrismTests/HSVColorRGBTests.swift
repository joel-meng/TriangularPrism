@testable import TriangularPrism
import XCTest

final class HSVColorTests: XCTestCase {
    func testHSVColorRGBInitTests() {
        XCTAssertEqual(
            HSVColor(hue: 0, saturation: 0, value: 0),
            HSVColor(red: 0, green: 0, blue: 0)
        )
        XCTAssertEqual(
            HSVColor(hue: 0, saturation: 0, value: 127),
            HSVColor(red: 127, green: 127, blue: 127)
        )
        XCTAssertEqual(
            HSVColor(hue: 0, saturation: 0, value: 255),
            HSVColor(red: 255, green: 255, blue: 255)
        )
    }

    func testConstant() {
        // Black
        XCTAssertEqual(RGBColor.black.red, 0)
        XCTAssertEqual(RGBColor.black.green, 0)
        XCTAssertEqual(RGBColor.black.blue, 0)

        XCTAssertEqual(RGBColor.black.unitRed, 0)
        XCTAssertEqual(RGBColor.black.unitGreen, 0)
        XCTAssertEqual(RGBColor.black.unitBlue, 0)
        XCTAssertEqual(RGBColor.black.hex, 0x000000)

        // White
        XCTAssertEqual(RGBColor.white.red, 255)
        XCTAssertEqual(RGBColor.white.green, 255)
        XCTAssertEqual(RGBColor.white.blue, 255)

        XCTAssertEqual(RGBColor.white.unitRed, 1)
        XCTAssertEqual(RGBColor.white.unitGreen, 1)
        XCTAssertEqual(RGBColor.white.unitBlue, 1)
        XCTAssertEqual(RGBColor.white.hex, 0xFFFFFF)

        // RED
        XCTAssertEqual(RGBColor.red.red, 255)
        XCTAssertEqual(RGBColor.red.green, 0)
        XCTAssertEqual(RGBColor.red.blue, 0)

        XCTAssertEqual(RGBColor.red.unitRed, 1)
        XCTAssertEqual(RGBColor.red.unitGreen, 0)
        XCTAssertEqual(RGBColor.red.unitBlue, 0)
        XCTAssertEqual(RGBColor.red.hex, 0xFF0000)

        // Olive
        XCTAssertEqual(RGBColor.olive.red, 128)
        XCTAssertEqual(RGBColor.olive.green, 128)
        XCTAssertEqual(RGBColor.olive.blue, 0)

        XCTAssertEqual(RGBColor.olive.unitRed, 0.5, accuracy: 0.01)
        XCTAssertEqual(RGBColor.olive.unitGreen, 0.5, accuracy: 0.01)
        XCTAssertEqual(RGBColor.olive.unitBlue, 0, accuracy: 0.01)
        XCTAssertEqual(RGBColor.olive.hex, 0x808000)

        // Silver
        XCTAssertEqual(RGBColor.silver.red, 192)
        XCTAssertEqual(RGBColor.silver.green, 192)
        XCTAssertEqual(RGBColor.silver.blue, 192)

        XCTAssertEqual(RGBColor.silver.unitRed, 0.7529412, accuracy: 0.01)
        XCTAssertEqual(RGBColor.silver.unitGreen, 0.7529412, accuracy: 0.01)
        XCTAssertEqual(RGBColor.silver.unitBlue, 0.7529412, accuracy: 0.01)
        XCTAssertEqual(RGBColor.silver.hex, 0xC0C0C0)

        // Purple
        XCTAssertEqual(RGBColor.purple.red, 128)
        XCTAssertEqual(RGBColor.purple.green, 0)
        XCTAssertEqual(RGBColor.purple.blue, 128)

        XCTAssertEqual(RGBColor.purple.unitRed, 0.5019608, accuracy: 0.01)
        XCTAssertEqual(RGBColor.purple.unitGreen, 0, accuracy: 0.01)
        XCTAssertEqual(RGBColor.purple.unitBlue, 0.5019608, accuracy: 0.01)
        XCTAssertEqual(RGBColor.purple.hex, 0x800080)

        // Teal
        XCTAssertEqual(RGBColor.teal.red, 0)
        XCTAssertEqual(RGBColor.teal.green, 128)
        XCTAssertEqual(RGBColor.teal.blue, 128)

        XCTAssertEqual(RGBColor.teal.unitRed, 0, accuracy: 0.01)
        XCTAssertEqual(RGBColor.teal.unitGreen, 0.5019608, accuracy: 0.01)
        XCTAssertEqual(RGBColor.teal.unitBlue, 0.5019608, accuracy: 0.01)
        XCTAssertEqual(RGBColor.teal.hex, 0x008080)
    }

    func testFlatColorConstant() {
//        XCTAssertEqual(HSBColor.flatBlack.hue, 0)
//        XCTAssertEqual(HSBColor.flatBlack.saturation, 9)
//        XCTAssertEqual(HSBColor.flatBlack.brightness, 17)
//
//        XCTAssertEqual(HSBColor.flatBlack.unitHue, 0)
//        XCTAssertEqual(HSBColor.flatBlack.unitSaturation, 9)
//        XCTAssertEqual(HSBColor.flatBlack.unitBrightness, 17)
    }
}
