import Foundation

extension FixedWidthInteger where Self: UnsignedInteger {
    public func scaling(factor: Self) -> Self {
        let portion: Float = Float(factor) / Float(Self.max)
        return .init(Float(self) * portion)
    }
}
