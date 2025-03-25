//
//  SearchBooksXMLParserTests.swift
//  GoodreadsService
//
//  Created by Nikita Lazarev-Zubov on 12.5.2020.
//

import Foundation
@testable
import GoodreadsService
import Testing

struct SearchBooksXMLParserTests {

    // MARK: - Methods

    @Test
    func searchBookInfoResult_asExpected() {
        let data = TestData.SearchBooks.regularXML
        let systemParser = XMLParser(data: data)

        let parser = SearchBooksXMLParser()
        systemParser.delegate = parser

        systemParser.parse()
        let result = parser.result

        #expect(result == TestResult.SearchBooks.regular)
    }

}
