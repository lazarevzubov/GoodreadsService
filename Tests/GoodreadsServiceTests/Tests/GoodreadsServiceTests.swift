//
//  GoodreadsServiceTests.swift
//  GoodreadsService
//
//  Created by Nikita Lazarev-Zubov on 16.5.2020.
//

@testable
import GoodreadsService
import XCTest

final class GoodreadsServiceTests: XCTestCase {

    // MARK: - Methods

    func testSearchBooks() {
        let webService = WebMockService()
        let service = GoodreadsService(webService: webService)

        let query = "Query"

        let expectation = XCTestExpectation()
        let completion: ([String]) -> Void = { _ in
            expectation.fulfill()
        }
        service.searchBooks(query, resultCompletion: completion)

        wait(for: [expectation], timeout: 1.0)
        XCTAssertEqual(webService.query, query)
    }

    func testGetBook() {
        let webService = WebMockService()
        let service = GoodreadsService(webService: webService)

        let id = "1"

        let expectation = XCTestExpectation()
        let completion: (Book?) -> Void = { _ in
            expectation.fulfill()
        }
        service.getBook(by: id, resultCompletion: completion)

        wait(for: [expectation], timeout: 1.0)
        XCTAssertEqual(webService.id, id)
    }

}

// MARK: -

private final class WebMockService: WebService {

    // MARK: - Properties

    private(set) var id: String?
    private(set) var query: String?

    // MARK: - Methods

    // MARK: WebService protocol methods

    func searchBooks(_ query: String, resultCompletion: @escaping ([String]) -> Void) {
        self.query = query
        resultCompletion([])
    }

    func getBook(by id: String, resultCompletion: @escaping (Book?) -> Void) {
        self.id = id
        resultCompletion(nil)
    }

}
