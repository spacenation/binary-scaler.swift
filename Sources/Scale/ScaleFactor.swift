import Foundation

extension FixedWidthInteger where Self: UnsignedInteger {
    public func scalingDown(factor: Self) -> Self {
        let portion: Float = Float(factor) / Float(Self.max)
        return .init(Float(self) * portion)
    }
    
    public func scalingUp(factor: Self) -> Self {
        let portion: Float = Float(Self.max) / Float(factor)
        return Self.init(Swift.min(Float(self) * portion, Float(Self.max)))
    }
}
