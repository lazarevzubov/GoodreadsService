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

        let expectation = XCTestExpectation()
        service.searchBooks("Query") {
            XCTAssertEqual($0, TestResult.SearchBooks.regular)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 1.0)
    }

    func testSearchBookFailure() {
        let error = MockError()
        let session = WebServiceMockErrorSession(error: error)
        let service = WebDefaultService(key: "Key", urlSession: session, urlFactory: URLStubFactory())

        let expectation = XCTestExpectation()
        service.searchBooks("Query") {
            XCTAssertTrue($0.isEmpty)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 1.0)
    }

    func testBookInfoSuccess() {
        let data = TestData.BookInfo.regularXML
        let session = WebServiceMockDataSession(data: data)
        let service = WebDefaultService(key: "Key", urlSession: session, urlFactory: URLStubFactory())

        let expectation = XCTestExpectation()
        service.getBook(by: "ID") {
            XCTAssertEqual($0, TestResult.BookInfo.regularResult)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 1.0)
    }

    func testBookInfoFailure() {
        let error = MockError()
        let session = WebServiceMockErrorSession(error: error)
        let service = WebDefaultService(key: "Key", urlSession: session, urlFactory: URLStubFactory())

        let expectation = XCTestExpectation()
        service.getBook(by: "ID") {
            XCTAssertNil($0)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 1.0)
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
        WebServiceMockErrorTask(error: error, completionHandler: completionHandler)
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
