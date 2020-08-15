import Foundation

prefix operator %

public prefix func %<U: FixedWidthInteger, T: FixedWidthInteger>(integer: U) -> T {
    integer.scaled()
}

public prefix func %<U: FixedWidthInteger, T: BinaryFloatingPoint>(integer: U) -> T {
    integer.scaled()
}

public prefix func %<U: BinaryFloatingPoint, T: FixedWidthInteger>(floatingPoint: U) -> T {
    floatingPoint.scaled(in: .unitInterval)
}
