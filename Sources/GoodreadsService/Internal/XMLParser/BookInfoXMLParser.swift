//
//  BookInfoXMLParser.swift
//  GoodreadsService
//
//  Created by Nikita Lazarev-Zubov on 25.4.2020.
//

import Foundation

/// The interface an XML parser uses to inform its delegate about the content of the parsed book info document.
final class BookInfoXMLParser: NSObject, XMLParserDelegateResult {

    // MARK: - Properties

    // MARK: XMLParserDelegateResult protocol properties

    var result: Book? {
        guard let id,
              !authors.isEmpty,
              !title.isEmpty else {
            return nil
        }
        let imageURL: URL? = if let imageURLString {
            URL(string: imageURLString)
        } else if let smallImageURLString {
            URL(string: smallImageURLString)
        } else {
            nil
        }

        return Book(id: id,
                    authors: authors,
                    title: title,
                    description: bookDescription.trimmingCharacters(in: .whitespacesAndNewlines),
                    imageURL: imageURL,
                    similarBookIDs: similarBooksIDs)
    }

    // MARK: Private properties

    private var authorNameExpected = false
    private var authors = [String]()
    private var descriptionParsed = false
    private var bookDescription = "" // The name "description" has been already taken by NSObject.
    private var bookIDExpected = false
    private var currentAuthorName = ""
    private var currentElement: String?
    private var currentSimilarBookID: String?
    private var id: String?
    private var imageURLString: String?
    private var similarBookIDExpected = false
    private var similarBooksIDs = [String]()
    private var similarBooksOngoing = false
    private var smallImageURLString: String?
    private var title = ""

    // MARK: - Methods

    // MARK: XMLParserDelegateResult protocol methods

    func parser(_ parser: XMLParser,
                didStartElement elementName: String,
                namespaceURI: String?,
                qualifiedName qName: String?,
                attributes attributeDict: [String : String] = [:]) {
        if elementName == Element.mainBook {
            if !similarBooksOngoing {
                bookIDExpected = true
            } else {
                similarBookIDExpected = true
            }
        } else if elementName == Element.authors {
            authorNameExpected = true
        } else if elementName == Element.similarBooks {
            similarBooksOngoing = true
        }
        currentElement = elementName
    }

    func parser(_ parser: XMLParser, foundCharacters string: String) {
        if currentElement == Element.idGeneral {
            if bookIDExpected {
                id = string
            } else if similarBookIDExpected {
                currentSimilarBookID = string
            }
        } else if currentElement == Element.imageURL {
           if !string.contains(ContentMarker.noImage),
              !authorNameExpected,
              !similarBooksOngoing {
               imageURLString = string
           }
        } else if currentElement == Element.smallImageURL {
           if !string.contains(ContentMarker.noImage),
              !authorNameExpected,
              !similarBooksOngoing {
               smallImageURLString = string
           }
        } else if currentElement == Element.nameGeneral {
           if authorNameExpected,
              !similarBooksOngoing {
               currentAuthorName += string
           }
        } else if currentElement == Element.title {
            title += string
        } else if currentElement == Element.description {
            if !descriptionParsed {
                bookDescription += string
            }
        }
    }

    func parser(_ parser: XMLParser,
                didEndElement elementName: String,
                namespaceURI: String?,
                qualifiedName qName: String?) {
        if elementName == Element.idGeneral {
            if bookIDExpected {
                bookIDExpected = false
            } else if similarBookIDExpected {
                if let currentSimilarBookID = currentSimilarBookID {
                    similarBooksIDs.append(currentSimilarBookID)
                    similarBookIDExpected = false
                }
            }
        } else if elementName == Element.authors {
            authorNameExpected = false
        } else if elementName == Element.nameGeneral {
           if authorNameExpected,
              !similarBooksOngoing {
               authors.append(currentAuthorName)
               currentAuthorName = ""
           }
        } else if elementName == Element.similarBooks {
            similarBooksOngoing = false
        } else if elementName == Element.description {
            descriptionParsed = true
        }
        currentElement = ""
    }

    // MARK: -

    private enum Element {

        // MARK: - Properties

        static let authors = "authors"
        static let description = "description"
        static let idGeneral = "id"
        static let imageURL = "image_url"
        static let mainBook = "book"
        static let nameGeneral = "name"
        static let similarBooks = "similar_books"
        static let smallImageURL = "small_image_url"
        static let title = "original_title"

    }

    // MARK: -

    private enum ContentMarker {

        // MARK: - Properties

        static let noImage = "nophoto"

    }

}

// MARK: - EmptyRepresentable

extension Optional: EmptyRepresentable {

    // MARK: - Initialization

    // MARK: EmptyRepresentable protocol initialization

    init() {
        self = .none
    }

}
