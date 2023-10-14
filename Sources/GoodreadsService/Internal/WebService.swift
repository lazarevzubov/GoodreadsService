//
//  WebService.swift
//  GoodreadsService
//
//  Created by Nikita Lazarev-Zubov on 15.4.2020.
//

import Foundation

/// Handles requests to a web service.
protocol WebService {
    
    // MARK: - Methods

    /// Sends a search request to the service.
    /// - Parameters:
    ///   - query: The query to handle.
    ///   - resultCompletion: The block of code that handles the result.
    ///   - ids: The resulting array of book IDs. If no results or an error occurred, the array is empty.
    func searchBooks(_ query: String, resultCompletion: @escaping (_ ids: [String]) -> Void)
    /// Sends the book info request.
    /// - Parameters:
    ///   - id: The ID of the book.
    ///   - resultCompletion: The block of code that handles the result.
    ///   - book: The book object or `nil` if no book exists with this ID, or an error occurred.
    func getBook(by id: String, resultCompletion: @escaping (_ book: Book?) -> Void)
    
}

// MARK: - 

/// The real web service requests handler.
struct WebDefaultService<Session: WebServiceSession>: WebService {

    // MARK: - Properties

    // MARK: Private properties

    private let key: String
    private let urlFactory: URLFactory
    private let urlSession: Session

    // MARK: - Initialization

    /// Creates a web service requests handler.
    /// - Parameters:
    ///   - key: A Goodreads service API key.
    ///   - urlFactory: A service URLs factory.
    ///   - urlSession: An object that coordinates network data-transfer tasks.
    init(key: String, urlSession: Session, urlFactory: URLFactory = URLDefaultFactory()) {
        // TODO: Find a way to provide a default value to urlSession parameter.
        
        self.key = key
        self.urlFactory = urlFactory
        self.urlSession = urlSession
    }
    
    // MARK: - Methods
    
    // MARK: WebService protocol methods
    
    func searchBooks(_ query: String, resultCompletion: @escaping (_ ids: [String]) -> Void) {
        let url = urlFactory.makeSearchBooksURL(key: key, query: query)
        let parser = SearchBooksXMLParser()

        runDataTask(with: url, parser: parser, resultCompletion: resultCompletion)
    }
    
    func getBook(by id: String, resultCompletion: @escaping (_ book: Book?) -> Void) {
        let url = urlFactory.makeBookInfoURL(key: key, id: id)
        let parser = BookInfoXMLParser()

        runDataTask(with: url, parser: parser, resultCompletion: resultCompletion)
    }

    // MARK: Private methods

    private func runDataTask<Parser: XMLParserDelegateResult>(with url: URL,
                                                              parser: Parser,
                                                              resultCompletion: @escaping (Parser.Result) -> Void) {
        urlSession
            .dataTask(with: url) { data, _, _ in
                guard let data else {
                    // TODO: Handle error.
                    resultCompletion(Parser.Result())

                    return
                }
                self.handleXML(data, parser: parser, resultCompletion: resultCompletion)
            }
            .resume()
    }

    private func handleXML<Parser: XMLParserDelegateResult>(_ data: Data,
                                                            parser: Parser,
                                                            resultCompletion: @escaping (Parser.Result) -> Void) {
        let systemParser = XMLParser(data: data)
        systemParser.delegate = parser
        systemParser.parse()

        resultCompletion(parser.result)
    }
    
}
