import Foundation

extension UInt32: ScalableUnsignedInteger {
    public static func scaled(from source: UInt8) -> UInt32 {
        UInt32(source) << 24 + UInt32(source) << 16 + UInt32(source) << 8 + UInt32(source)
    }
    
    public static func scaled(from source: UInt16) -> UInt32 {
        UInt32(source) << 16 + UInt32(source)
    }
    
    public static func scaled(from source: UInt32) -> UInt32 {
        source
    }
    
    public static func scaled(from source: UInt64) -> UInt32 {
        UInt32(source >> 32)
    }
}
