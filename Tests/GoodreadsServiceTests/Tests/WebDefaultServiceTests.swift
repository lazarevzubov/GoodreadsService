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

    func testSearchBooksSuccess() {
        let data = TestData.SearchBooks.regularXML
        let session = WebServiceMockDataSession(data: data)
        let service = WebDefaultService(key: "Key", urlSession: session, urlFactory: URLStubFactory())

        var result: [String]?

        let expectation = XCTestExpectation()
        service.searchBooks("Query") { bookIDs in
            result = bookIDs
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 1.0)

        XCTAssertEqual(result, TestResult.SearchBooks.regular)
    }

    func testSearchBookFailure() {
        let error = MockError()
        let session = WebServiceMockErrorSession(error: error)
        let service = WebDefaultService(key: "Key", urlSession: session, urlFactory: URLStubFactory())

        var result: [String]?

        let expectation = XCTestExpectation()
        service.searchBooks("Query") { bookIDs in
            result = bookIDs
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 1.0)

        XCTAssertTrue(result!.isEmpty)
    }

    func testBookInfoSuccess() {
        let data = TestData.BookInfo.regularXML
        let session = WebServiceMockDataSession(data: data)
        let service = WebDefaultService(key: "Key", urlSession: session, urlFactory: URLStubFactory())

        var result: Book?

        let expectation = XCTestExpectation()
        service.getBook(by: "ID") { book in
            result = book
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 1.0)

        XCTAssertEqual(result, TestResult.BookInfo.regularResult)
    }

    func testBookInfoFailure() {
        let error = MockError()
        let session = WebServiceMockErrorSession(error: error)
        let service = WebDefaultService(key: "Key", urlSession: session, urlFactory: URLStubFactory())

        var result: Book?

        let expectation = XCTestExpectation()
        service.getBook(by: "ID") { book in
            result = book
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 1.0)

        XCTAssertNil(result)
    }

}

// MARK: -

private struct WebServiceMockDataTask: WebServiceTask {

    // MARK: - Properties

    // MARK: Private properties

    private let completionHandler: (Data?, URLResponse?, Error?) -> Void
    private let data: Data

    // MARK: - Initialization

    init(data: Data, completionHandler: @escaping ((Data?, URLResponse?, Error?) -> Void)) {
        self.data = data
        self.completionHandler = completionHandler
    }

    // MARK: - Methods

    // MARK: WebServiceTask protocol methods

    func resume() {
        completionHandler(data, nil, nil)
    }

}

// MARK: -

private struct WebServiceMockErrorTask: WebServiceTask {

    // MARK: - Properties

    // MARK: Private properties

    private let completionHandler: (Data?, URLResponse?, Error?) -> Void
    private let error: Error

    // MARK: - Initialization

    init(error: Error, completionHandler: @escaping ((Data?, URLResponse?, Error?) -> Void)) {
        self.error = error
        self.completionHandler = completionHandler
    }

    // MARK: - Methods

    // MARK: WebServiceTask protocol methods

    func resume() {
        completionHandler(nil, nil, error)
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

    func dataTask(with url: URL,
                  completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> WebServiceMockDataTask {
        return WebServiceMockDataTask(data: data, completionHandler: completionHandler)
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

    func dataTask(with url: URL,
                  completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> WebServiceMockErrorTask {
        return WebServiceMockErrorTask(error: error, completionHandler: completionHandler)
    }

}

// MARK: -

private struct URLStubFactory: URLFactory {

    // MARK: - Methods

    // MARK: URLFactory protocol methods

    func makeSearchBooksURL(key: String, query: String) -> URL {
        return URL(string: "https://www.apple.com")!
    }

    func makeBookInfoURL(key: String, id: String) -> URL {
        return URL(string: "https://www.apple.com")!
    }

}

// MARK: -

private struct MockError: Error { }
