import Foundation

extension UInt64: ScalableUnsignedInteger {
    public static func scaled(from source: UInt8) -> UInt64 {
        let upper = UInt64(source) << 56 + UInt64(source) << 48 + UInt64(source) << 40 + UInt64(source) << 32
        let lower = UInt64(source) << 24 + UInt64(source) << 16 + UInt64(source) << 8 + UInt64(source)
        return upper + lower
    }
    
    public static func scaled(from source: UInt16) -> UInt64 {
        UInt64(source) << 48 + UInt64(source) << 32 + UInt64(source) << 16 + UInt64(source)
    }
    
    public static func scaled(from source: UInt32) -> UInt64 {
        UInt64(source) << 32 + UInt64(source)
    }
    
    public static func scaled(from source: UInt64) -> UInt64 {
        source
    }
}
