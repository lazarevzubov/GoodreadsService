//
//  XMLParserResult.swift
//  GoodreadsService
//
//  Created by Nikita Lazarev-Zubov on 18.4.2020.
//

import Foundation

// TODO: HeaderDoc.

protocol XMLParserDelegateResult: XMLParserDelegate {

    associatedtype Result

    // MARK: - Properties

    var result: Result { get }

}
