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

    func testSearchBooks() async {
        let webService = WebMockService()
        let service = GoodreadsService(webService: webService)

        let query = "Query"
        _ = await service.searchBooks(query)
        
        XCTAssertEqual(webService.query, query)
    }

    func testGetBook() async {
        let webService = WebMockService()
        let service = GoodreadsService(webService: webService)

        let id = "1"
        _ = await service.getBook(by: id)

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

    func searchBooks(_ query: String) async -> [String] {
        self.query = query
        return []
    }

    func getBook(by id: String) async -> Book? {
        self.id = id
        return nil
    }

}
