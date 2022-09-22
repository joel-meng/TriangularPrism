@testable import TriangularPrism
import XCTest

final class HSBColorTests: XCTestCase {
    func testHSBColorRGBInitTests() {
        let whiteColor = RGBColor(red: 255, green: 255, blue: 255)
        XCTAssertEqual(whiteColor.red, 255)
        XCTAssertEqual(whiteColor.green, 255)
        XCTAssertEqual(whiteColor.blue, 255)
    }

    func testColorUnit() {
        // Given white
        let whiteColor = RGBColor(red: 255, green: 255, blue: 255)
        // Then
        XCTAssertEqual(whiteColor.unitRed, 1)
        XCTAssertEqual(whiteColor.unitGreen, 1)
        XCTAssertEqual(whiteColor.unitBlue, 1)

        // Given black
        let blackColor = RGBColor(red: 0, green: 0, blue: 0)

        XCTAssertEqual(blackColor.unitRed, 0)
        XCTAssertEqual(blackColor.unitGreen, 0)
        XCTAssertEqual(blackColor.unitBlue, 0)

        // Given Red
        let redColor = RGBColor(red: 255, green: 0, blue: 0)

        XCTAssertEqual(redColor.unitRed, 1)
        XCTAssertEqual(redColor.unitGreen, 0)
        XCTAssertEqual(redColor.unitBlue, 0)

        // Given Green
        let greenColor = RGBColor(red: 0, green: 255, blue: 0)

        XCTAssertEqual(greenColor.unitRed, 0)
        XCTAssertEqual(greenColor.unitGreen, 1)
        XCTAssertEqual(greenColor.unitBlue, 0)

        // Given Blue
        let blueColor = RGBColor(red: 0, green: 0, blue: 255)

        XCTAssertEqual(blueColor.unitRed, 0)
        XCTAssertEqual(blueColor.unitGreen, 0)
        XCTAssertEqual(blueColor.unitBlue, 1)

        // Given custom Color
        let customColor = RGBColor(red: 61, green: 86, blue: 144)

        XCTAssertEqual(customColor.unitRed, 0.23921569)
        XCTAssertEqual(customColor.unitGreen, 0.3372549)
        XCTAssertEqual(customColor.unitBlue, 0.5647059)
    }
}
