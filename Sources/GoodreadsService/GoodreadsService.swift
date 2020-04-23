//
//  GoodreadsService.swift
//  GoodreadsService
//
//  Created by Nikita Lazarev-Zubov on 15.4.2020.
//

// TODO: HeaderDoc.

public struct GoodreadsService {

    // MARK: - Properties

    // MARK: Private properties

    private let webService: WebService

    // MARK: - Initialization

    public init(key: String) {
        let webService = WebDefaultService(key: key)
        self.init(webService: webService)
    }

    init(webService: WebService) {
        self.webService = webService
    }

    // MARK: - Methods

    public func searchBooks(_ query: String, resultCompletion: @escaping (_ ids: [String]) -> Void) {
        webService.searchBooks(query, resultCompletion: resultCompletion)
    }

    public func getBook(by id: String, resultCompletion: @escaping (_ book: Book) -> Void) {
        webService.getBook(by: id, resultCompletion: resultCompletion)
    }

}
