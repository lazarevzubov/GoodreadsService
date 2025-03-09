//
//  BookInfoXMLParser.swift
//  GoodreadsService
//
//  Created by Nikita Lazarev-Zubov on 11.5.2020.
//

@testable
import GoodreadsService
import XCTest

final class BookInfoXMLParserTests: XCTestCase {

    // MARK: - Methods

    func testParseBookInfoResult() {
        let data = TestData.BookInfo.regularXML
        let systemParser = XMLParser(data: data)

        let parser = BookInfoXMLParser()
        systemParser.delegate = parser

        systemParser.parse()
        let result = parser.result

        XCTAssertEqual(result, TestResult.BookInfo.regularResult)
    }

    func testNoPhotoXML() {
        let data = TestData.BookInfo.noPhotoXML
        let systemParser = XMLParser(data: data)

        let parser = BookInfoXMLParser()
        systemParser.delegate = parser

        systemParser.parse()
        let result = parser.result
        XCTAssertNil(result!.imageURL)
    }

}
