//
//  BookInfoXMLParser.swift
//  
//
//  Created by Nikita Lazarev-Zubov on 25.4.2020.
//

import Foundation

// TODO: HeaderDoc.

final class BookInfoXMLParser: NSObject, XMLParserDelegateResult {

    // MARK: - Properties

    // MARK: XMLParserDelegateResult protocol properties

    private(set) var result: Book?

    // MARK: - Methods

    // MARK: XMLParserDelegateResult protocol methods

    func parser(_ parser: XMLParser,
                didStartElement elementName: String,
                namespaceURI: String?,
                qualifiedName qName: String?,
                attributes attributeDict: [String: String] = [:]) {
        // TODO.
    }

    func parser(_ parser: XMLParser, foundCharacters string: String) {
        // TODO.
    }

    func parser(_ parser: XMLParser,
                didEndElement elementName: String,
                namespaceURI: String?,
                qualifiedName qName: String?) {
        // TODO.
    }

    // MARK: -

    private enum Element {

        // MARK: - Properties


    }

}
