//
//  BookInfoXMLParser.swift
//  GoodreadsService
//
//  Created by Nikita Lazarev-Zubov on 11.5.2020.
//

import Foundation
@testable
import GoodreadsService
import Testing

struct BookInfoXMLParserTests {

    // MARK: - Methods

    @Test
    func parseBookInfoResult_asExpected() {
        let data = TestData.BookInfo.regularXML
        let systemParser = XMLParser(data: data)

        let parser = BookInfoXMLParser()
        systemParser.delegate = parser

        systemParser.parse()
        let result = parser.result

        #expect(result == TestResult.BookInfo.regularResult)
    }

    @Test
    func noPhotoXMLResult_asExpected() throws {
        let data = TestData.BookInfo.noPhotoXML
        let systemParser = XMLParser(data: data)

        let parser = BookInfoXMLParser()
        systemParser.delegate = parser

        systemParser.parse()
        let result = try #require(parser.result)

        #expect(result.imageURL == nil)
    }

}
