import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(UInt8Tests.allTests),
        testCase(UInt16Tests.allTests),
        testCase(UInt32Tests.allTests),
        testCase(UInt64Tests.allTests),
    ]
}
#endif
