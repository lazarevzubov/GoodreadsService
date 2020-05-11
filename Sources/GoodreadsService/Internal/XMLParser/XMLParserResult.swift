//
//  XMLParserResult.swift
//  GoodreadsService
//
//  Created by Nikita Lazarev-Zubov on 18.4.2020.
//

import Foundation

/// The interface an XML parser uses to inform its delegate about the content of the parsed document.
protocol XMLParserDelegateResult: XMLParserDelegate {

    /// The parser result object type.
    associatedtype Result

    // MARK: - Properties

    /// The parser result.
    var result: Result { get }

}
