import GoodreadsServiceTests
import XCTest

var tests = [XCTestCaseEntry]()
tests += BookInfoXMLParserTests.allTests
tests += SearchBooksXMLParser.allTests

XCTMain(tests)
