//
//  GoodreadsService.swift
//  GoodreadsService
//
//  Created by Nikita Lazarev-Zubov on 15.4.2020.
//

import Foundation

/// The entry point to the service.
///
/// Contains the set of methods to interact with the Goodreads database.
public struct GoodreadsService: Sendable {

    // MARK: - Properties

    // MARK: Private properties

    private let webService: WebService

    // MARK: - Initialization

    /// Creates entry point to the service.
    /// - Parameter key: A Goodreads service API key.
    public init(key: String) {
        let webService = WebDefaultService(key: key, urlSession: URLSession.shared)
        self.init(webService: webService)
    }

    /// Creates the service entry point using the pre-configured web service.
    /// - Parameter webService: Handles requests to a web service.
    init(webService: WebService) {
        self.webService = webService
    }

    // MARK: - Methods

    /// Queries the service.
    ///
    /// Fragments of book titles or author names can be used as queries.
    ///
    /// - Parameter query: The query to handle.
    /// - Returns: The resulting array of book IDs. If no results or an error occurred, the array is empty.
    public func searchBooks(_ query: String) async -> [String] {
        await webService.searchBooks(query)
    }

    /// Requests the book info.
    /// - Parameter id: The ID of the book.
    /// - Returns: The book object or `nil` if no book exists with this ID, or an error occurred.
    public func getBook(by id: String) async -> Book? {
        await webService.getBook(by: id)
    }

}
