//
//  WebService.swift
//  GoodreadsService
//
//  Created by Nikita Lazarev-Zubov on 15.4.2020.
//

import Foundation

// TODO: HeaderDoc.

protocol WebService {
    
    // MARK: - Methods
    
    func searchBooks(_ query: String, resultCompletion: @escaping (_ ids: [String]) -> Void)
    func getBook(by id: String, resultCompletion: @escaping (_ book: Book?) -> Void)
    
}

// MARK: - 

struct WebDefaultService: WebService {

    // MARK: - Properties

    // MARK: Private properties

    private let key: String
    private let urlFactory: URLFactory
    private let urlSession: URLSession

    // MARK: - Initialization

    init(key: String, urlFactory: URLFactory = URLDefaultFactory(), urlSession: URLSession = .shared) {
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
        _ = urlSession.dataTask(with: url) { data, _, _ in
            guard let data = data else {
                // TODO: Handle errors.
                return
            }
            self.handleXML(data, parser: parser, resultCompletion: resultCompletion)
        }.resume()
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
