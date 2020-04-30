import Foundation

extension BinaryInteger where Self : FixedWidthInteger {
    public func normalized(in range: ClosedRange<Self> = Self.min...Self.max) -> Float {
        guard range.upperBound - range.lowerBound > 0 else { return 0 }
        return Float(self - range.lowerBound) / Float(range.upperBound - range.lowerBound)
    }
}
