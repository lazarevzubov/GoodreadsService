import XCTest

#if !canImport(ObjectiveC)

public func allTests() -> [XCTestCaseEntry] {
    return [testCase(BookInfoXMLParserTests.allTests),
            testCase(SearchBooksXMLParser.allTests),
            testCase(WebDefaultServiceTests.allTests)]
}

#endif
