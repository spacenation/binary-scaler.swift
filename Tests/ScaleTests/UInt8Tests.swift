import XCTest
import Scale

final class UInt8Tests: XCTestCase {
    func testScalingUnsignedIntegers() {
        XCTAssert(UInt8.scaled(from: UInt8(255)) == 255)
        XCTAssert(UInt8.scaled(from: UInt8(127)) == 127)
        XCTAssert(UInt8.scaled(from: UInt8(1)) == 1)
        XCTAssert(UInt8.scaled(from: UInt8(0)) == 0)
        
        XCTAssert(UInt8.scaled(from: UInt16(65535)) == 255)
        XCTAssert(UInt8.scaled(from: UInt16(32896)) == 128)
        XCTAssert(UInt8.scaled(from: UInt16(0)) == 0)
        
        XCTAssert(UInt8.scaled(from: UInt32(4294967295)) == 255)
        XCTAssert(UInt8.scaled(from: UInt32(0)) == 0)
        
        XCTAssert(UInt8.scaled(from: UInt64(18446744073709551615)) == 255)
        XCTAssert(UInt8.scaled(from: UInt64(0)) == 0)
    }

    static var allTests = [
        ("testScalingUnsignedIntegers", testScalingUnsignedIntegers),
    ]
}
