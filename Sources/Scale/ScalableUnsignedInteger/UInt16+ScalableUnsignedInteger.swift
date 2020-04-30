import Foundation

extension UInt16: ScalableUnsignedInteger {
    public static func scaled(from source: UInt8) -> UInt16 {
        UInt16(source) << 8 + UInt16(source)
    }
    
    public static func scaled(from source: UInt16) -> UInt16 {
        source
    }
    
    public static func scaled(from source: UInt32) -> UInt16 {
        UInt16(source >> 16)
    }
    
    public static func scaled(from source: UInt64) -> UInt16 {
        UInt16(source >> 48)
    }
}
