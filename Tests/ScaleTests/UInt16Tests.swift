import XCTest
import Scale

final class UInt16Tests: XCTestCase {
    func testScalingUnsignedIntegers() {
        XCTAssert(UInt16.scaled(from: UInt8(0)) == 0)
        XCTAssert(UInt16.scaled(from: UInt8(1)) == 257)
        XCTAssert(UInt16.scaled(from: UInt8(64)) == 16448)
        XCTAssert(UInt16.scaled(from: UInt8(128)) == 32896)
        XCTAssert(UInt16.scaled(from: UInt8(255)) == 65535)
    }

    static var allTests = [
        ("testScalingUnsignedIntegers", testScalingUnsignedIntegers),
    ]
}
