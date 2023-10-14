//
//  URLFactory.swift
//  GoodreadsService
//
//  Created by Nikita Lazarev-Zubov on 18.4.2020.
//

import Foundation

/// The service URLs factory.
protocol URLFactory {

    // MARK: - Methods

    /// Creates the URL for the specified search query.
    /// - Parameters:
    ///   - key: A Goodreads service API key.
    ///   - query: The search query.
    /// - Returns: The URL for the specified search query.
    func makeSearchBooksURL(key: String, query: String) -> URL
    /// Creates the URL for the specified book info request.
    /// - Parameters:
    ///   - key: A Goodreads service API key.
    ///   - id: The ID of the book.
    /// - Returns: The URL for the specified book info request.
    func makeBookInfoURL(key: String, id: String) -> URL

}

// MARK: -

/// The real service URLs factory.
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
            fatalError("\(#file).\(#line): Unexpectedly wrong URL parameters—a programmer's error.")
        }

        return url
    }

    func makeBookInfoURL(key: String, id: String) -> URL {
        // https://www.goodreads.com/book/show/375802.xml?key=JQfiS9k0doIho3vm13Qxdg

        var urlComponents = URLComponents()
        urlComponents.scheme = Component.scheme
        urlComponents.host = Component.host
        urlComponents.path = String(format: Component.Path.bookInfoFormat, id)
        urlComponents.queryItems = [URLQueryItem(name: Component.Query.key, value: key)]

        guard let url = urlComponents.url else {
            fatalError("\(#file).\(#line): Unexpectedly wrong URL parameters—a programmer's error.")
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

            static let bookInfoFormat = "/book/show/%@.xml"
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
