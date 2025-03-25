//
//  WebDefaultServiceTests.swift
//  GoodreadsService
//
//  Created by Nikita Lazarev-Zubov on 13.5.2020.
//

import Foundation
@testable
import GoodreadsService
import Testing

struct WebDefaultServiceTests {

    // MARK: - Methods

    @Test
    func searchBooks_success() async {
        let data = TestData.SearchBooks.regularXML
        let session = WebServiceMockDataSession(data: data)
        let service = WebDefaultService(key: "Key", urlSession: session, urlFactory: URLStubFactory())

        let result = await service.searchBooks("Query")
        #expect(result == TestResult.SearchBooks.regular)
    }

    @Test
    func searchBook_failure() async {
        let error = MockError()
        let session = WebServiceMockErrorSession(error: error)
        let service = WebDefaultService(key: "Key", urlSession: session, urlFactory: URLStubFactory())

        let result = await service.searchBooks("Query")
        #expect(result.isEmpty)
    }

    @Test
    func bookInfo_success() async {
        let data = TestData.BookInfo.regularXML
        let session = WebServiceMockDataSession(data: data)
        let service = WebDefaultService(key: "Key", urlSession: session, urlFactory: URLStubFactory())

        let result = await service.getBook(by: "ID")
        #expect(result == TestResult.BookInfo.regularResult)
    }

    @Test
    func bookInfo_failure() async {
        let error = MockError()
        let session = WebServiceMockErrorSession(error: error)
        let service = WebDefaultService(key: "Key", urlSession: session, urlFactory: URLStubFactory())

        let result = await service.getBook(by: "ID")
        #expect(result == nil)
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
