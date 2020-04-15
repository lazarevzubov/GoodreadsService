//
//  Book.swift
//  
//
//  Created by Nikita Lazarev-Zubov on 14.4.2020.
//

import Foundation

// TODO: HeaderDoc.

public struct Book {
    
    // MARK: - Properties
    
    public let authors: [String]
    public let id: String
    public let imageURL: URL?
    public let similarBookIDs: [String]
    public let title: String
    
}
