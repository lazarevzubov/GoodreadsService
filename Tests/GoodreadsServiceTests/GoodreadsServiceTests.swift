import XCTest
@testable import GoodreadsService

final class GoodreadsServiceTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(GoodreadsService().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
