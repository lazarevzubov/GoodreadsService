//
//  WebService.swift
//  GoodreadsService
//
//  Created by Nikita Lazarev-Zubov on 15.4.2020.
//

import Foundation

/// Handles requests to a web service.
protocol WebService: Actor {

    // MARK: - Methods

    /// Sends a search request to the service.
    /// - Parameter query: The query to handle.
    /// - Returns: The resulting array of book IDs. If no results or an error occurred, the array is empty.
    func searchBooks(_ query: String) async -> [String]
    /// Sends the book info request.
    /// - Parameter id: The ID of the book.
    /// - Returns: The book object or `nil` if no book exists with this ID, or an error occurred.
    func getBook(by id: String) async -> Book?

}

// MARK: - 

/// The real web service requests handler.
actor WebDefaultService: WebService {

    // MARK: - Properties

    // MARK: Private properties

    private let key: String
    private let urlFactory: URLFactory
    private let urlSession: WebServiceSession

    // MARK: - Initialization

    /// Creates a web service requests handler.
    /// - Parameters:
    ///   - key: A Goodreads service API key.
    ///   - urlFactory: A service URLs factory.
    ///   - urlSession: An object that coordinates network data-transfer tasks.
    init(key: String, urlSession: WebServiceSession, urlFactory: URLFactory = URLDefaultFactory()) {
        // TODO: Find a way to provide a default value to urlSession parameter.
        
        self.key = key
        self.urlFactory = urlFactory
        self.urlSession = urlSession
    }
    
    // MARK: - Methods
    
    // MARK: WebService protocol methods
    
    func searchBooks(_ query: String) async -> [String] {
        let url = urlFactory.makeSearchBooksURL(key: key, query: query)
        let parser = SearchBooksXMLParser()

        return (try? await parseData(from: url, parser: parser)) ?? []
    }
    
    func getBook(by id: String) async -> Book? {
        let url = urlFactory.makeBookInfoURL(key: key, id: id)
        let parser = BookInfoXMLParser()

        return try? await parseData(from: url, parser: parser)
    }

    // MARK: Private methods

    private func parseData<Parser: XMLParserDelegateResult>(
        from url: URL, parser: Parser
    ) async throws -> Parser.Result {
        let (data, _) = try await urlSession.data(from: url)
        return handleXML(data, parser: parser)
    }

    private func handleXML<Parser: XMLParserDelegateResult>(_ data: Data, parser: Parser) -> Parser.Result {
        let systemParser = XMLParser(data: data)
        systemParser.delegate = parser
        systemParser.parse()

        return parser.result
    }
    
}
