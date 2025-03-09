//
//  GoodreadsServiceTests.swift
//  GoodreadsService
//
//  Created by Nikita Lazarev-Zubov on 16.5.2020.
//

@testable
import GoodreadsService
import Testing

struct GoodreadsServiceTests {

    // MARK: - Methods

    @Test
    func searchBooks_sendsCorrectQuery() async {
        let webService = WebMockService()
        let service = GoodreadsService(webService: webService)

        let query = "Query"
        _ = await service.searchBooks(query)
        
        await #expect(webService.query == query)
    }

    @Test
    func getBook_sendsCorrectID() async {
        let webService = WebMockService()
        let service = GoodreadsService(webService: webService)

        let id = "1"
        _ = await service.getBook(by: id)

        await #expect(webService.id == id)
    }

}

// MARK: -

actor WebMockService: WebService {

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
