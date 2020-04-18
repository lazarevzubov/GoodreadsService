//
//  URLFactory.swift
//  GoodreadsService
//
//  Created by Nikita Lazarev-Zubov on 18.4.2020.
//

import Foundation

// TODO: HeaderDoc.

protocol URLFactory {

    // MARK: - Methods

    func makeSearchBooksURL(key: String, query: String) -> URL

}

// MARK: -

struct URLDefaultFactory: URLFactory {

    // MARK: - Methods

    // MARK: URLFactory protocol methods

    func makeSearchBooksURL(key: String, query: String) -> URL {
        // https://www.goodreads.com/search/index.xml?key=JQfiS9k0doIho3vm13Qxdg&q=Ender%27s+Game

        var urlComponents = URLComponents()
        urlComponents.scheme = Component.scheme
        urlComponents.host = Component.host
        urlComponents.path = Component.Path.searchBook
        urlComponents.queryItems = [URLQueryItem(name: Component.Query.key, value: key),
                                    URLQueryItem(name: Component.Query.query, value: query)]

        guard let url = urlComponents.url else {
            // TODO: Handle properly, though not going to happen really.
            fatalError()
        }

        return url
    }

    // MARK: -

    private enum Component {

        // MARK: - Properties

        static let host = "www.goodreads.com"
        static let scheme = "https"

        // MARK: -

        enum Path {

            // MARK: - Properties

            static let searchBook = "/search/index.xml"

        }

        // MARK: -

        enum Query {

            // MARK: - Properties

            static let key = "key"
            static let query = "q"

        }

    }

}
