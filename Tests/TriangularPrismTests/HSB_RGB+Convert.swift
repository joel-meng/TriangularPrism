//
//  HSB_RGB+Convert.swift
//
//
//  Created by Jun Meng on 19/9/2022.
//

@testable import TriangularPrism
import XCTest

final class HSB_RGB_Convert: XCTestCase {
    func testHSB2RGB() {
        let flatBlackRGB = HSBColor.flatBlack.redGreenBlueColor
        XCTAssertEqual(flatBlackRGB.red, 43, accuracy: 1)
        XCTAssertEqual(flatBlackRGB.green, 43, accuracy: 1)
        XCTAssertEqual(flatBlackRGB.blue, 43, accuracy: 1)

        let flatBlueRGB = HSBColor.flatBlue.redGreenBlueColor
        XCTAssertEqual(flatBlueRGB.red, 113, accuracy: 1)
        XCTAssertEqual(flatBlueRGB.green, 139, accuracy: 1)
        XCTAssertEqual(flatBlueRGB.blue, 207, accuracy: 1)

        let flatBrownRGB = HSBColor.flatBrown.redGreenBlueColor
        XCTAssertEqual(flatBrownRGB.red, 137, accuracy: 1)
        XCTAssertEqual(flatBrownRGB.green, 86, accuracy: 1)
        XCTAssertEqual(flatBrownRGB.blue, 52, accuracy: 1)

        let flatCoffeeRGB = HSBColor.flatCoffee.redGreenBlueColor
        XCTAssertEqual(flatCoffeeRGB.red, 192, accuracy: 1)
        XCTAssertEqual(flatCoffeeRGB.green, 158, accuracy: 1)
        XCTAssertEqual(flatCoffeeRGB.blue, 135, accuracy: 1)

        let flatForestGreenRGB = HSBColor.flatForestGreen.redGreenBlueColor
        XCTAssertEqual(flatForestGreenRGB.red, 52, accuracy: 1)
        XCTAssertEqual(flatForestGreenRGB.green, 137, accuracy: 1)
        XCTAssertEqual(flatForestGreenRGB.blue, 77, accuracy: 1)
    }
}
