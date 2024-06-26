//
//  XMLParserResult.swift
//  GoodreadsService
//
//  Created by Nikita Lazarev-Zubov on 18.4.2020.
//

import Foundation

/// A type that can be created with an initializer without arguments.
protocol EmptyRepresentable {

    // MARK: - Initialization

    /// Creates an empty or generic instance of the type.
    init()

}

// MARK: -

/// The interface an XML parser uses to inform its delegate about the content of the parsed document.
protocol XMLParserDelegateResult: XMLParserDelegate {

    /// The parser result object type.
    associatedtype Result: EmptyRepresentable

    // MARK: - Properties

    /// The parser result.
    var result: Result { get }

}
