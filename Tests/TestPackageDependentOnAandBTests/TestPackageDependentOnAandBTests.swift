import XCTest
@testable import TestPackageDependentOnAandB

final class TestPackageDependentOnAandBTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(TestPackageDependentOnAandB().text, "Hello, World!")
        XCTAssertEqual(TestPackageDependentOnAandB().testPackageAText, "TestPackageA - Hello, World!")
        XCTAssertEqual(TestPackageDependentOnAandB().testPackageBText, "TestPackageB - Hello, World!")
    }
}
