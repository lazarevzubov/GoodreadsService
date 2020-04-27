//
//  SearchBooksXMLParser.swift
//  GoodreadsService
//
//  Created by Nikita Lazarev-Zubov on 18.4.2020.
//

import Foundation

// TODO: HeaderDoc.

final class SearchBooksXMLParser: NSObject, XMLParserDelegateResult {

    // MARK: - Properties

    // MARK: XMLParserDelegateResult protocol properties

    private(set) var result = [String]()

    // MARK: Private properties

    private var currentElement: String?
    private var currentID = ""

    // MARK: - Methods

    // MARK: XMLParserDelegateResult protocol methods

    func parser(_ parser: XMLParser,
                didStartElement elementName: String,
                namespaceURI: String?,
                qualifiedName qName: String?,
                attributes attributeDict: [String: String] = [:]) {
        if elementName == Element.book {
            currentElement = elementName
            return
        }
        if elementName == Element.id,
            currentElement == Element.book {
            currentElement = elementName
        }
    }

    func parser(_ parser: XMLParser, foundCharacters string: String) {
        guard currentElement == Element.id else {
            return
        }
        currentID = string
    }

    func parser(_ parser: XMLParser,
                didEndElement elementName: String,
                namespaceURI: String?,
                qualifiedName qName: String?) {
        guard currentElement == Element.id else {
            return
        }

        result.append(currentID)
        resetForNext()
    }

    // MARK: Private methods

    private func resetForNext() {
        currentElement = ""
        currentID = ""
    }

    // MARK: -

    private enum Element {

        // MARK: - Properties

        static let book = "best_book"
        static let id = "id"

    }

}
