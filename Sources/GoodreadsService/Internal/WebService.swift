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
    func getBook(by id: String, resultCompletion: @escaping (_ ids: [Book]) -> Void)
    
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
        _ = urlSession.dataTask(with: url) { data, _, _ in
            guard let data = data else {
                resultCompletion([])
                // TODO: Handle errors.

                return
            }
            self.handleSearchBooksXML(data, resultCompletion: resultCompletion)
        }.resume()
    }
    
    func getBook(by id: String, resultCompletion: @escaping (_ ids: [Book]) -> Void) {
        // TODO
    }

    // MARK: Private methods

    private func handleSearchBooksXML(_ data: Data, resultCompletion: @escaping (_ ids: [String]) -> Void) {
        let parser = XMLParser(data: data)

        let parserDelegate = SearchBooksXMLParser()
        parser.delegate = parserDelegate
        parser.parse()

        resultCompletion(parserDelegate.result)
    }
    
}
