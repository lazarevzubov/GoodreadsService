//
//  BookTests.swift
//  GoodreadsService
//
//  Created by Nikita Lazarev-Zubov on 16.5.2020.
//

import Foundation
@testable
import GoodreadsService
import Testing

struct BookTests {

    // MARK: - Methods

    @Test
    func authors_asProvided() {
        let authors = [
            "Author1", 
            "Author1"
        ]
        let book = Book(id: "1", authors: authors, title: "Title", description: "")

        #expect(book.authors == authors)
    }

    @Test
    func id_asProvided() {
        let id = "1"
        let book = Book(id: id, authors: [], title: "Title", description: "")

        #expect(book.id == id)
    }

    @Test
    func imageURL_asProvided() throws {
        let url = try #require(URL(string: "https://apple.com"))
        let book = Book(id: "1", authors: [], title: "Title", description: "", imageURL: url)

        #expect(book.imageURL == url)
    }

    @Test
    func similarBookIDs_asProvided() {
        let ids = ["1", "2"]
        let book = Book(id: "3", authors: [], title: "Title", description: "", similarBookIDs: ids)

        #expect(book.similarBookIDs == ids)
    }

    @Test
    func title_asProvided() {
        let title = "Title"
        let book = Book(id: "1", authors: [], title: title, description: "")

        #expect(book.title == title)
    }

    @Test
    func description_asProvided() {
        let desc = "Desc"
        let book = Book(id: "1", authors: [], title: "Title", description: desc)

        #expect(book.description == desc)
    }

    @Test
    func sameBooks_haveEqualHashValues() throws {
        let authors = [
            "Author1",
            "Author2"
        ]
        let title = "Title"
        let desc = "Desc"
        let id = "1"
        let imageURL = try #require(URL(string: "https://apple.com"))
        let similarBookIDs = ["2", "3"]

        let book1 = Book(
            id: id,
            authors: authors,
            title: title,
            description: desc,
            imageURL: imageURL,
            similarBookIDs: similarBookIDs
        )
        let book2 = Book(
            id: id,
            authors: authors,
            title: title,
            description: desc,
            imageURL: imageURL,
            similarBookIDs: similarBookIDs
        )

        #expect(book1.hashValue == book2.hashValue)
    }

    @Test
    func booksWithDifferentAuthors_haveDifferentHashValues() throws {
        let authors1 = [
            "Author1",
            "Author2"
        ]
        let authors2 = [
            "Author1",
            "Author3"
        ]

        let title = "Title"
        let desc = "Desc"
        let id = "1"
        let imageURL = try #require(URL(string: "https://apple.com"))
        let similarBookIDs = [
            "2",
            "3"
        ]

        let book1 = Book(
            id: id,
            authors: authors1,
            title: title,
            description: desc,
            imageURL: imageURL,
            similarBookIDs: similarBookIDs
        )
        let book2 = Book(
            id: id,
            authors: authors2,
            title: title,
            description: desc,
            imageURL: imageURL,
            similarBookIDs: similarBookIDs
        )

        #expect(book1.hashValue != book2.hashValue)
    }

    @Test
    func booksWithDifferentTitles_haveDifferentHashValues() throws {
        let title1 = "Title1"
        let title2 = "Title2"

        let authors = [
            "Author1",
            "Author2"
        ]
        let desc = "Desc"
        let id = "1"
        let imageURL = try #require(URL(string: "https://apple.com"))
        let similarBookIDs = [
            "2",
            "3"
        ]

        let book1 = Book(
            id: id,
            authors: authors,
            title: title1,
            description: desc,
            imageURL: imageURL,
            similarBookIDs: similarBookIDs
        )
        let book2 = Book(
            id: id,
            authors: authors,
            title: title2,
            description: desc,
            imageURL: imageURL,
            similarBookIDs: similarBookIDs
        )

        #expect(book1.hashValue != book2.hashValue)
    }

    @Test
    func booksWithDifferentDescriptions_haveDifferentHashValues() throws {
        let desc1 = "Desc1"
        let desc2 = "Desc2"

        let authors = [
            "Author1",
            "Author2"
        ]
        let title = "Title"
        let id = "1"
        let imageURL = try #require(URL(string: "https://apple.com"))
        let similarBookIDs = [
            "2",
            "3"
        ]

        let book1 = Book(
            id: id,
            authors: authors,
            title: title,
            description: desc1,
            imageURL: imageURL,
            similarBookIDs: similarBookIDs
        )
        let book2 = Book(
            id: id,
            authors: authors,
            title: title,
            description: desc2,
            imageURL: imageURL,
            similarBookIDs: similarBookIDs
        )

        #expect(book1.hashValue != book2.hashValue)
    }

    @Test
    func booksWithDifferentIDs_haveDifferentHashValues() throws {
        let id1 = "1"
        let id2 = "2"

        let authors = [
            "Author1",
            "Author2"
        ]
        let title = "Title"
        let desc = "Desc"
        let imageURL = try #require(URL(string: "https://apple.com"))
        let similarBookIDs = [
            "2",
            "3"
        ]

        let book1 = Book(
            id: id1,
            authors: authors,
            title: title,
            description: desc,
            imageURL: imageURL,
            similarBookIDs: similarBookIDs
        )
        let book2 = Book(
            id: id2,
            authors: authors,
            title: title,
            description: desc,
            imageURL: imageURL,
            similarBookIDs: similarBookIDs
        )

        #expect(book1.hashValue != book2.hashValue)
    }

    @Test
    func booksWithDifferentImageURLs_haveDifferentHashValues() throws {
        let imageURL1 = try #require(URL(string: "https://apple.com"))
        let imageURL2 = try #require(URL(string: "https://goodreads.com"))

        let authors = [
            "Author1",
            "Author2"
        ]
        let title = "Title"
        let desc = "Desc"
        let id = "1"
        let similarBookIDs = [
            "2",
            "3"
        ]

        let book1 = Book(
            id: id,
            authors: authors,
            title: title,
            description: desc,
            imageURL: imageURL1,
            similarBookIDs: similarBookIDs
        )
        let book2 = Book(
            id: id,
            authors: authors,
            title: title,
            description: desc,
            imageURL: imageURL2,
            similarBookIDs: similarBookIDs
        )

        #expect(book1.hashValue != book2.hashValue)
    }

    @Test
    func booksWithDifferentSimilarBookIDs_haveDifferentHashValues() throws {
        let similarBookIDs1 = [
            "2",
            "3"
        ]
        let similarBookIDs2 = [
            "2",
            "4"
        ]

        let authors = [
            "Author1",
            "Author2"
        ]
        let title = "Title"
        let desc = "Desc"
        let id = "1"
        let imageURL = try #require(URL(string: "https://apple.com"))

        let book1 = Book(
            id: id,
            authors: authors,
            title: title,
            description: desc,
            imageURL: imageURL,
            similarBookIDs: similarBookIDs1
        )
        let book2 = Book(
            id: id,
            authors: authors,
            title: title,
            description: desc,
            imageURL: imageURL,
            similarBookIDs: similarBookIDs2
        )

        #expect(book1.hashValue != book2.hashValue)
    }

    @Test
    func sameBooks_equal() throws {
        let authors = [
            "Author1",
            "Author2"
        ]
        let title = "Title"
        let desc = "Desc"
        let id = "1"
        let imageURL = try #require(URL(string: "https://apple.com"))
        let similarBookIDs = [
            "2",
            "3"
        ]

        let book1 = Book(
            id: id,
            authors: authors,
            title: title,
            description: desc,
            imageURL: imageURL,
            similarBookIDs: similarBookIDs
        )
        let book2 = Book(
            id: id,
            authors: authors,
            title: title,
            description: desc,
            imageURL: imageURL,
            similarBookIDs: similarBookIDs
        )

        #expect(book1 == book2)
    }

    @Test
    func booksWithDifferentAuthors_doNotEqual() throws {
        let authors1 = [
            "Author1",
            "Author2"
        ]
        let authors2 = [
            "Author1",
            "Author3"
        ]

        let title = "Title"
        let desc = "Desc"
        let id = "1"
        let imageURL = try #require(URL(string: "https://apple.com"))
        let similarBookIDs = ["2", "3"]

        let book1 = Book(
            id: id,
            authors: authors1,
            title: title,
            description: desc,
            imageURL: imageURL,
            similarBookIDs: similarBookIDs
        )
        let book2 = Book(
            id: id,
            authors: authors2,
            title: title,
            description: desc,
            imageURL: imageURL,
            similarBookIDs: similarBookIDs
        )

        #expect(book1 != book2)
    }

    @Test
    func booksWithDifferentTitles_doNotEqual() throws {
        let title1 = "Title1"
        let title2 = "Title2"

        let authors = [
            "Author1",
            "Author2"
        ]
        let desc = "Desc"
        let id = "1"
        let imageURL = try #require(URL(string: "https://apple.com"))
        let similarBookIDs = ["2", "3"]

        let book1 = Book(
            id: id,
            authors: authors,
            title: title1,
            description: desc,
            imageURL: imageURL,
            similarBookIDs: similarBookIDs
        )
        let book2 = Book(
            id: id,
            authors: authors,
            title: title2,
            description: desc,
            imageURL: imageURL,
            similarBookIDs: similarBookIDs
        )

        #expect(book1 != book2)
    }

    @Test
    func booksWithDifferentDescriptions_doNotEqual() throws {
        let desc1 = "Desc1"
        let desc2 = "Desc2"

        let authors = [
            "Author1",
            "Author2"
        ]
        let title = "Title"
        let id = "1"
        let imageURL = try #require(URL(string: "https://apple.com"))
        let similarBookIDs = [
            "2",
            "3"
        ]

        let book1 = Book(
            id: id,
            authors: authors,
            title: title,
            description: desc1,
            imageURL: imageURL,
            similarBookIDs: similarBookIDs
        )
        let book2 = Book(
            id: id,
            authors: authors,
            title: title,
            description: desc2,
            imageURL: imageURL,
            similarBookIDs: similarBookIDs
        )

        #expect(book1 != book2)
    }

    @Test
    func booksWithDifferentIDs_doNotEqual() throws {
        let id1 = "1"
        let id2 = "2"

        let authors = [
            "Author1",
            "Author2"
        ]
        let title = "Title"
        let desc = "Desc"
        let imageURL = try #require(URL(string: "https://apple.com"))
        let similarBookIDs = [
            "2",
            "3"
        ]

        let book1 = Book(
            id: id1,
            authors: authors,
            title: title,
            description: desc,
            imageURL: imageURL,
            similarBookIDs: similarBookIDs
        )
        let book2 = Book(
            id: id2,
            authors: authors,
            title: title,
            description: desc,
            imageURL: imageURL,
            similarBookIDs: similarBookIDs
        )

        #expect(book1 != book2)
    }

    @Test
    func booksWithDifferentImageURLs_doNotEqual() throws {
        let imageURL1 = try #require(URL(string: "https://apple.com"))
        let imageURL2 = try #require(URL(string: "https://goodreads.com"))

        let authors = [
            "Author1",
            "Author2"
        ]
        let title = "Title"
        let desc = "Desc"
        let id = "1"
        let similarBookIDs = [
            "2",
            "3"
        ]

        let book1 = Book(
            id: id,
            authors: authors,
            title: title,
            description: desc,
            imageURL: imageURL1,
            similarBookIDs: similarBookIDs
        )
        let book2 = Book(
            id: id,
            authors: authors,
            title: title,
            description: desc,
            imageURL: imageURL2,
            similarBookIDs: similarBookIDs
        )

        #expect(book1 != book2)
    }

    @Test
    func booksWithDifferentSimilarBookIDs_doNotEqual() throws {
        let similarBookIDs1 = [
            "2",
            "3"
        ]
        let similarBookIDs2 = [
            "2",
            "4"
        ]

        let authors = [
            "Author1",
            "Author2"
        ]
        let title = "Title"
        let desc = "Desc"
        let id = "1"
        let imageURL = try #require(URL(string: "https://apple.com"))

        let book1 = Book(
            id: id,
            authors: authors,
            title: title,
            description: desc,
            imageURL: imageURL,
            similarBookIDs: similarBookIDs1
        )
        let book2 = Book(
            id: id,
            authors: authors,
            title: title,
            description: desc,
            imageURL: imageURL,
            similarBookIDs: similarBookIDs2
        )

        #expect(book1 != book2)
    }

}
