import XCTest
import BinaryScaler

final class BinaryScalerTests: XCTestCase {
    func testBinaryScaling() {
        /// Int to Int
        XCTAssert(%UInt8(255) == UInt8(255))
        XCTAssert(%UInt16(65535) == UInt8(255))
        XCTAssert(%UInt8(255) == UInt16(65280))
        XCTAssert(%UInt32(4294967295) == UInt8(255))
        XCTAssert(%UInt64(18446744073709551615) == UInt8(255))
        
        /// Float to Int
        XCTAssert(%Float(0) == UInt16(0))
        XCTAssert(%Float(1.0) == UInt8(255))
        XCTAssert(%Double(1.0) == UInt16(65535))
        /// Int to Float
        XCTAssert(%UInt8(255) == Float(1.0))
        XCTAssert(%UInt8(0) == Float(0))
    }
    
    func testScaleDownFactor() {
        XCTAssert(UInt8(255).scalingDown(factor: 255) == 255)
        XCTAssert(UInt8(255).scalingDown(factor: 127) == 127)
        XCTAssert(UInt8(64).scalingDown(factor: 128) == 32)
        XCTAssert(UInt8(255).scalingDown(factor: 0) == 0)
    }
    
    func testScaleUpFactor() {
        XCTAssert(UInt8(255).scalingUp(factor: 255) == 255)
        XCTAssert(UInt8(127).scalingUp(factor: 127) == 255)
        XCTAssert(UInt8(32).scalingUp(factor: 127) == 64)
        XCTAssert(UInt8(255).scalingUp(factor: 0) == 255)
        XCTAssert(UInt8(0).scalingUp(factor: 0) == 0)
    }

    static var allTests = [
        ("testBinaryScaling", testBinaryScaling),
        ("testScaleDownFactor", testScaleDownFactor),
        ("testScaleUpFactor", testScaleUpFactor),
    ]
}
