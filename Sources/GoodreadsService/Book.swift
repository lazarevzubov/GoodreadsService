//
//  Book.swift
//  GoodreadsService
//
//  Created by Nikita Lazarev-Zubov on 14.4.2020.
//

import Foundation

/// A book meta-data object.
public struct Book: Sendable {

    // MARK: - Properties

    /// Authors of the book.
    public let authors: [String]
    /// A description of the book.
    public let description: String
    /// Goodreads ID of the book.
    public let id: String
    /// The book cover.
    public let imageURL: URL?
    /// Similar books IDs.
    public let similarBookIDs: [String]
    /// The book title.
    public let title: String

    // MARK: - Initialization

    /// Creates the book object.
    ///
    /// This initializer is made public mainly for your app testing purposes.
    ///
    /// - Parameters:
    ///   - authors: Authors of the book.
    ///   - title: The book title.
    ///   - description: A description of the book.
    ///   - id: The ID of the book.
    ///   - imageURL: The book cover.
    ///   - similarBookIDs: Similar books IDs.
    public init(authors: [String],
                title: String,
                description: String,
                id: String,
                imageURL: URL? = nil,
                similarBookIDs: [String] = []) {
        self.authors = authors
        self.title = title
        self.description = description
        self.id = id
        self.imageURL = imageURL
        self.similarBookIDs = similarBookIDs
    }
    
}

// MARK: - Hashable

extension Book: Hashable { }
