//
//  XMLParserResult.swift
//  GoodreadsService
//
//  Created by Nikita Lazarev-Zubov on 18.4.2020.
//

// TODO: HeaderDoc.

protocol XMLParserResult {

    associatedtype Result

    // MARK: - Properties

    var result: Result { get }

}
