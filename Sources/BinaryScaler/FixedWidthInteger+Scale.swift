import Foundation

extension FixedWidthInteger {
    public func scaled<T: FixedWidthInteger>() -> T {
        let sizeDelta = MemoryLayout<Self>.size * 8 - MemoryLayout<T>.size * 8
        if sizeDelta > 0 {
            return T(self >> sizeDelta)
        }
        if sizeDelta < 0 {
            return T(self) >> sizeDelta
        }
        return T(self)
    }
    
    public func scaled<T: BinaryFloatingPoint>() -> T {
        T(self) / T(Self.max)
    }
}

extension FixedWidthInteger where Self: UnsignedInteger {
    public func scalingDown(factor: Self) -> Self {
        let portion: Float = Float(factor) / Float(Self.max)
        let newValue = Float(self) * portion
        return Self.init(Swift.max(0, Swift.min(newValue, Float(Self.max))))
    }
    
    public func scalingUp(factor: Self) -> Self {
        guard factor > 0 else { return self }
        let portion: Float = Float(Self.max) / Float(factor)
        let newValue = Float(self) * portion
        return Self.init(Swift.max(0, Swift.min(newValue, Float(Self.max))))
    }
}

extension FixedWidthInteger {
    public func normalized(in range: ClosedRange<Self> = .maxRange) -> Float {
        guard range.upperBound - range.lowerBound > 0 else { return 0 }
        let value = Swift.min(Swift.max(self, range.lowerBound), range.upperBound)
        return Float(value - range.lowerBound) / Float(range.upperBound - range.lowerBound)
    }
}

extension Range where Bound: FixedWidthInteger {
    public static var maxRange: Self {
        Bound.min..<Bound.max
    }
}

extension ClosedRange where Bound: FixedWidthInteger {
    public static var maxRange: Self {
        Bound.min...Bound.max
    }
}
