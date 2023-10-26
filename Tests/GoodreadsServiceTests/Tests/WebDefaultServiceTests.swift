//
//  WebDefaultServiceTests.swift
//  GoodreadsService
//
//  Created by Nikita Lazarev-Zubov on 13.5.2020.
//

@testable
import GoodreadsService
import XCTest

final class WebDefaultServiceTests: XCTestCase {

    // MARK: - Properties

    static private(set) var allTests = [("testSearchBooksSuccess", testSearchBooksSuccess)]

    // MARK: - Methods

    func testSearchBooksSuccess() async {
        let data = TestData.SearchBooks.regularXML
        let session = WebServiceMockDataSession(data: data)
        let service = WebDefaultService(key: "Key", urlSession: session, urlFactory: URLStubFactory())

        let result = await service.searchBooks("Query")
        XCTAssertEqual(result, TestResult.SearchBooks.regular)
    }

    func testSearchBookFailure() async {
        let error = MockError()
        let session = WebServiceMockErrorSession(error: error)
        let service = WebDefaultService(key: "Key", urlSession: session, urlFactory: URLStubFactory())

        let result = await service.searchBooks("Query")
        XCTAssertTrue(result.isEmpty)
    }

    func testBookInfoSuccess() async {
        let data = TestData.BookInfo.regularXML
        let session = WebServiceMockDataSession(data: data)
        let service = WebDefaultService(key: "Key", urlSession: session, urlFactory: URLStubFactory())

        let result = await service.getBook(by: "ID")
        XCTAssertEqual(result, TestResult.BookInfo.regularResult)
    }

    func testBookInfoFailure() async {
        let error = MockError()
        let session = WebServiceMockErrorSession(error: error)
        let service = WebDefaultService(key: "Key", urlSession: session, urlFactory: URLStubFactory())

        let result = await service.getBook(by: "ID")
        XCTAssertNil(result)
    }

}

// MARK: -

private struct WebServiceMockDataSession: WebServiceSession {

    // MARK: - Properties

    // MARK: Private properties

    private let data: Data

    // MARK: - Initialization

    init(data: Data) {
        self.data = data
    }

    // MARK: - Methods

    func data(from url: URL) async throws -> (Data, URLResponse) {
        (data, URLResponse())
    }

}

// MARK: -

private struct WebServiceMockErrorSession: WebServiceSession {

    // MARK: - Properties

    // MARK: Private properties

    private let error: Error

    // MARK: - Initialization

    init(error: Error) {
        self.error = error
    }

    // MARK: - Methods

    func data(from url: URL) async throws -> (Data, URLResponse) {
        throw error
    }

}

// MARK: -

private struct URLStubFactory: URLFactory {

    // MARK: - Methods

    // MARK: URLFactory protocol methods

    func makeSearchBooksURL(key: String, query: String) -> URL {
        URL(string: "https://www.apple.com")!
    }

    func makeBookInfoURL(key: String, id: String) -> URL {
        URL(string: "https://www.apple.com")!
    }

}

// MARK: -

private struct MockError: Error { }
