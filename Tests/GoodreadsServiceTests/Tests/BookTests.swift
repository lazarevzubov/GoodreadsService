//
//  BookTests.swift
//  GoodreadsService
//
//  Created by Nikita Lazarev-Zubov on 16.5.2020.
//

@testable
import GoodreadsService
import XCTest

final class BookTests: XCTestCase {

    // MARK: - Methods

    func testAuthors() {
        let authors = ["Author1", "Author1"]
        let book = Book(id: "1", authors: authors, title: "Title", description: "")

        XCTAssertEqual(book.authors, authors)
    }

    func testID() {
        let id = "1"
        let book = Book(id: id, authors: [], title: "Title", description: "")

        XCTAssertEqual(book.id, id)
    }

    func testImageURL() {
        let url = URL(string: "https://apple.com")!
        let book = Book(id: "1", authors: [], title: "Title", description: "", imageURL: url)

        XCTAssertEqual(book.imageURL, url)
    }

    func testSimilarBookIDs() {
        let ids = ["1", "2"]
        let book = Book(id: "3", authors: [], title: "Title", description: "", similarBookIDs: ids)

        XCTAssertEqual(book.similarBookIDs, ids)
    }

    func testTitle() {
        let title = "Title"
        let book = Book(id: "1", authors: [], title: title, description: "")

        XCTAssertEqual(book.title, title)
    }

    func testDescription() {
        let desc = "Desc"
        let book = Book(id: "1", authors: [], title: "Title", description: desc)

        XCTAssertEqual(book.description, desc)
    }

    func testEqualHashes() {
        let authors = ["Author1", "Author2"]
        let title = "Title"
        let desc = "Desc"
        let id = "1"
        let imageURL = URL(string: "https://apple.com")!
        let similarBookIDs = ["2", "3"]

        let book1 = Book(id: id, 
                         authors: authors,
                         title: title,
                         description: desc,
                         imageURL: imageURL,
                         similarBookIDs: similarBookIDs)
        let book2 = Book(id: id, 
                         authors: authors,
                         title: title,
                         description: desc,
                         imageURL: imageURL,
                         similarBookIDs: similarBookIDs)
        XCTAssertEqual(book1.hashValue, book2.hashValue)
    }

    func testHashDifferenceWithDifferentAuthors() {
        let authors1 = ["Author1", "Author2"]
        let authors2 = ["Author1", "Author3"]

        let title = "Title"
        let desc = "Desc"
        let id = "1"
        let imageURL = URL(string: "https://apple.com")!
        let similarBookIDs = ["2", "3"]

        let book1 = Book(id: id, 
                         authors: authors1,
                         title: title,
                         description: desc,
                         imageURL: imageURL,
                         similarBookIDs: similarBookIDs)
        let book2 = Book(id: id, 
                         authors: authors2,
                         title: title,
                         description: desc,
                         imageURL: imageURL,
                         similarBookIDs: similarBookIDs)

        XCTAssertNotEqual(book1.hashValue, book2.hashValue)
    }

    func testHashDifferenceWithDifferentTitles() {
        let title1 = "Title1"
        let title2 = "Title2"

        let authors = ["Author1", "Author2"]
        let desc = "Desc"
        let id = "1"
        let imageURL = URL(string: "https://apple.com")!
        let similarBookIDs = ["2", "3"]

        let book1 = Book(id: id, 
                         authors: authors,
                         title: title1,
                         description: desc,
                         imageURL: imageURL,
                         similarBookIDs: similarBookIDs)
        let book2 = Book(id: id, 
                         authors: authors,
                         title: title2,
                         description: desc,
                         imageURL: imageURL,
                         similarBookIDs: similarBookIDs)

        XCTAssertNotEqual(book1.hashValue, book2.hashValue)
    }

    func testHashDifferenceWithDifferentDescriptions() {
        let desc1 = "Desc1"
        let desc2 = "Desc2"

        let authors = ["Author1", "Author2"]
        let title = "Title"
        let id = "1"
        let imageURL = URL(string: "https://apple.com")!
        let similarBookIDs = ["2", "3"]

        let book1 = Book(id: id, 
                         authors: authors,
                         title: title,
                         description: desc1,
                         imageURL: imageURL,
                         similarBookIDs: similarBookIDs)
        let book2 = Book(id: id, 
                         authors: authors,
                         title: title,
                         description: desc2,
                         imageURL: imageURL,
                         similarBookIDs: similarBookIDs)

        XCTAssertNotEqual(book1.hashValue, book2.hashValue)
    }

    func testHashDifferenceWithDifferentIDs() {
        let id1 = "1"
        let id2 = "2"

        let authors = ["Author1", "Author2"]
        let title = "Title"
        let desc = "Desc"
        let imageURL = URL(string: "https://apple.com")!
        let similarBookIDs = ["2", "3"]

        let book1 = Book(id: id1, 
                         authors: authors,
                         title: title,
                         description: desc,
                         imageURL: imageURL,
                         similarBookIDs: similarBookIDs)
        let book2 = Book(id: id2, 
                         authors: authors,
                         title: title,
                         description: desc,
                         imageURL: imageURL,
                         similarBookIDs: similarBookIDs)

        XCTAssertNotEqual(book1.hashValue, book2.hashValue)
    }

    func testHashDifferenceWithDifferentImageURLs() {
        let imageURL1 = URL(string: "https://apple.com")!
        let imageURL2 = URL(string: "https://goodreads.com")!

        let authors = ["Author1", "Author2"]
        let title = "Title"
        let desc = "Desc"
        let id = "1"
        let similarBookIDs = ["2", "3"]

        let book1 = Book(id: id, 
                         authors: authors,
                         title: title,
                         description: desc,
                         imageURL: imageURL1,
                         similarBookIDs: similarBookIDs)
        let book2 = Book(id: id, 
                         authors: authors,
                         title: title,
                         description: desc,
                         imageURL: imageURL2,
                         similarBookIDs: similarBookIDs)

        XCTAssertNotEqual(book1.hashValue, book2.hashValue)
    }

    func testHashDifferenceWithDifferentSimilarBookIDs() {
        let similarBookIDs1 = ["2", "3"]
        let similarBookIDs2 = ["2", "4"]

        let authors = ["Author1", "Author2"]
        let title = "Title"
        let desc = "Desc"
        let id = "1"
        let imageURL = URL(string: "https://apple.com")!

        let book1 = Book(id: id, 
                         authors: authors,
                         title: title,
                         description: desc,
                         imageURL: imageURL,
                         similarBookIDs: similarBookIDs1)
        let book2 = Book(id: id, 
                         authors: authors,
                         title: title,
                         description: desc,
                         imageURL: imageURL,
                         similarBookIDs: similarBookIDs2)

        XCTAssertNotEqual(book1.hashValue, book2.hashValue)
    }

    func testEquals() {
        let authors = ["Author1", "Author2"]
        let title = "Title"
        let desc = "Desc"
        let id = "1"
        let imageURL = URL(string: "https://apple.com")!
        let similarBookIDs = ["2", "3"]

        let book1 = Book(id: id,
                         authors: authors,
                         title: title,
                         description: desc,
                         imageURL: imageURL,
                         similarBookIDs: similarBookIDs)
        let book2 = Book(id: id,
                         authors: authors,
                         title: title,
                         description: desc,
                         imageURL: imageURL,
                         similarBookIDs: similarBookIDs)
        XCTAssertEqual(book1, book2)
    }

    func testNotEqualWithDifferentAuthors() {
        let authors1 = ["Author1", "Author2"]
        let authors2 = ["Author1", "Author3"]

        let title = "Title"
        let desc = "Desc"
        let id = "1"
        let imageURL = URL(string: "https://apple.com")!
        let similarBookIDs = ["2", "3"]

        let book1 = Book(id: id, 
                         authors: authors1,
                         title: title,
                         description: desc,
                         imageURL: imageURL,
                         similarBookIDs: similarBookIDs)
        let book2 = Book(id: id, 
                         authors: authors2,
                         title: title,
                         description: desc,
                         imageURL: imageURL,
                         similarBookIDs: similarBookIDs)

        XCTAssertNotEqual(book1, book2)
    }

    func testNotEqualWithDifferentTitles() {
        let title1 = "Title1"
        let title2 = "Title2"

        let authors = ["Author1", "Author2"]
        let desc = "Desc"
        let id = "1"
        let imageURL = URL(string: "https://apple.com")!
        let similarBookIDs = ["2", "3"]

        let book1 = Book(id: id, 
                         authors: authors,
                         title: title1,
                         description: desc,
                         imageURL: imageURL,
                         similarBookIDs: similarBookIDs)
        let book2 = Book(id: id, 
                         authors: authors,
                         title: title2,
                         description: desc,
                         imageURL: imageURL,
                         similarBookIDs: similarBookIDs)

        XCTAssertNotEqual(book1, book2)
    }

    func testNotEqualWithDifferentDescriptions() {
        let desc1 = "Desc1"
        let desc2 = "Desc2"

        let authors = ["Author1", "Author2"]
        let title = "Title"
        let id = "1"
        let imageURL = URL(string: "https://apple.com")!
        let similarBookIDs = ["2", "3"]

        let book1 = Book(id: id, 
                         authors: authors,
                         title: title,
                         description: desc1,
                         imageURL: imageURL,
                         similarBookIDs: similarBookIDs)
        let book2 = Book(id: id,
                         authors: authors,
                         title: title,
                         description: desc2,
                         imageURL: imageURL,
                         similarBookIDs: similarBookIDs)

        XCTAssertNotEqual(book1, book2)
    }

    func testNotEqualWithDifferentIDs() {
        let id1 = "1"
        let id2 = "2"

        let authors = ["Author1", "Author2"]
        let title = "Title"
        let desc = "Desc"
        let imageURL = URL(string: "https://apple.com")!
        let similarBookIDs = ["2", "3"]

        let book1 = Book(id: id1,
                         authors: authors,
                         title: title,
                         description: desc,
                         imageURL: imageURL,
                         similarBookIDs: similarBookIDs)
        let book2 = Book(id: id2, 
                         authors: authors,
                         title: title,
                         description: desc,
                         imageURL: imageURL,
                         similarBookIDs: similarBookIDs)

        XCTAssertNotEqual(book1, book2)
    }

    func testNotEqualWithDifferentImageURLs() {
        let imageURL1 = URL(string: "https://apple.com")!
        let imageURL2 = URL(string: "https://goodreads.com")!

        let authors = ["Author1", "Author2"]
        let title = "Title"
        let desc = "Desc"
        let id = "1"
        let similarBookIDs = ["2", "3"]

        let book1 = Book(id: id,
                         authors: authors,
                         title: title,
                         description: desc,
                         imageURL: imageURL1,
                         similarBookIDs: similarBookIDs)
        let book2 = Book(id: id, 
                         authors: authors,
                         title: title,
                         description: desc,
                         imageURL: imageURL2,
                         similarBookIDs: similarBookIDs)

        XCTAssertNotEqual(book1, book2)
    }

    func testNotEqualWithDifferentSimilarBookIDs() {
        let similarBookIDs1 = ["2", "3"]
        let similarBookIDs2 = ["2", "4"]

        let authors = ["Author1", "Author2"]
        let title = "Title"
        let desc = "Desc"
        let id = "1"
        let imageURL = URL(string: "https://apple.com")!

        let book1 = Book(id: id, 
                         authors: authors,
                         title: title,
                         description: desc,
                         imageURL: imageURL,
                         similarBookIDs: similarBookIDs1)
        let book2 = Book(id: id, 
                         authors: authors,
                         title: title,
                         description: desc,
                         imageURL: imageURL,
                         similarBookIDs: similarBookIDs2)

        XCTAssertNotEqual(book1, book2)
    }

}
