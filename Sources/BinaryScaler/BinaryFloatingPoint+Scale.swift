import Foundation

extension BinaryFloatingPoint {
    public func scaled<T: FixedWidthInteger>(in range: ClosedRange<Self>) -> T {
        T(Self(T.max) * self.normalized(in: range))
    }
}

extension BinaryFloatingPoint {
    public func normalized(in range: ClosedRange<Self> = .unitInterval) -> Self {
        guard range.upperBound - range.lowerBound > 0 else { return 0 }
        let value = Swift.min(Swift.max(self, range.lowerBound), range.upperBound)
        return Self(value - range.lowerBound) / Self(range.upperBound - range.lowerBound)
    }
}

extension ClosedRange where Bound : BinaryFloatingPoint {
    public static var unitInterval: Self { 0.0...1.0 }
}
