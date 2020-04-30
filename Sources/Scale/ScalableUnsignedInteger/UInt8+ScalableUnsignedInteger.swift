import Foundation

extension UInt8: ScalableUnsignedInteger {
    public static func scaled(from source: UInt8) -> UInt8 {
        source
    }
    
    public static func scaled(from source: UInt16) -> UInt8 {
        UInt8(source >> 8)
    }
    
    public static func scaled(from source: UInt32) -> UInt8 {
        UInt8(source >> 24)
    }
    
    public static func scaled(from source: UInt64) -> UInt8 {
        UInt8(source >> 56)
    }
}
