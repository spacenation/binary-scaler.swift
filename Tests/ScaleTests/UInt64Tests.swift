import XCTest
import Scale

final class UInt64Tests: XCTestCase {
    func testScalingUnsignedIntegers() {
        XCTAssert(UInt64.scaled(from: UInt64(18446744073709551615)) == 18446744073709551615)
        XCTAssert(UInt64.scaled(from: UInt32(4294967295)) == 18446744073709551615)
        XCTAssert(UInt64.scaled(from: UInt16(65535)) == 18446744073709551615)
        XCTAssert(UInt64.scaled(from: UInt8(255)) == 18446744073709551615)
    }

    static var allTests = [
        ("testScalingUnsignedIntegers", testScalingUnsignedIntegers),
    ]
}
