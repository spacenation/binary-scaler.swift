import Foundation

public protocol ScalableUnsignedInteger {
    static func scaled(from source: UInt8) -> Self
    static func scaled(from source: UInt16) -> Self
    static func scaled(from source: UInt32) -> Self
    static func scaled(from source: UInt64) -> Self
}

public extension ScalableUnsignedInteger {
    init(scaling source: UInt8) {
        self = Self.scaled(from: source)
    }
    
    init(scaling source: UInt16) {
        self = Self.scaled(from: source)
    }
    
    init(scaling source: UInt32) {
        self = Self.scaled(from: source)
    }
    
    init(scaling source: UInt64) {
        self = Self.scaled(from: source)
    }
}

prefix operator %
public prefix func %<T: ScalableUnsignedInteger>(source: UInt8) -> T {
    T(scaling: source)
}

public prefix func %<T: ScalableUnsignedInteger>(source: UInt16) -> T {
    T(scaling: source)
}

public prefix func %<T: ScalableUnsignedInteger>(source: UInt32) -> T {
    T(scaling: source)
}

public prefix func %<T: ScalableUnsignedInteger>(source: UInt64) -> T {
    T(scaling: source)
}

public prefix func %<T: ScalableUnsignedInteger>(source: UInt8?) -> T? {
    if let source = source {
        return T(scaling: source)
    } else {
        return nil
    }
}

public prefix func %<T: ScalableUnsignedInteger>(source: UInt16?) -> T? {
    if let source = source {
        return T(scaling: source)
    } else {
        return nil
    }
}

public prefix func %<T: ScalableUnsignedInteger>(source: UInt32?) -> T? {
    if let source = source {
        return T(scaling: source)
    } else {
        return nil
    }
}

public prefix func %<T: ScalableUnsignedInteger>(source: UInt64?) -> T? {
    if let source = source {
        return T(scaling: source)
    } else {
        return nil
    }
}
