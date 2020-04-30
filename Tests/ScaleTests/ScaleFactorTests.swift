import XCTest
import Scale

final class ScaleFactorTests: XCTestCase {
    func testScaleFactor() {
        XCTAssert(UInt8(255).scaling(factor: 255) == 255)
        XCTAssert(UInt8(255).scaling(factor: 127) == 127)
        XCTAssert(UInt8(64).scaling(factor: 128) == 32)
        XCTAssert(UInt8(255).scaling(factor: 0) == 0)
    }

    static var allTests = [
        ("testScaleFactor", testScaleFactor),
    ]
}
