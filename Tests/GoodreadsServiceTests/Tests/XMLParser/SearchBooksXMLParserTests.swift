//
//  SearchBooksXMLParserTests.swift
//  GoodreadsService
//
//  Created by Nikita Lazarev-Zubov on 12.5.2020.
//

@testable
import GoodreadsService
import XCTest

final class SearchBooksXMLParserTests: XCTestCase {

    // MARK: - Properties

    static private(set) var allTests = [("testSearchBookInfoResult", testSearchBookInfoResult)]

    // MARK: - Methods

    func testSearchBookInfoResult() {
        let data = TestData.SearchBooks.regularXML
        let systemParser = XMLParser(data: data)

        let parser = SearchBooksXMLParser()
        systemParser.delegate = parser

        systemParser.parse()
        let result = parser.result

        XCTAssertEqual(result, TestResult.SearchBooks.regular)
    }

}
