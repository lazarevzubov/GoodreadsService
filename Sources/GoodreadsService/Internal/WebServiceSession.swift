//
//  WebServiceSession.swift
//  
//
//  Created by Nikita Lazarev-Zubov on 13.5.2020.
//

import Foundation

/// Coordinates a group of web service tasks.
protocol WebServiceSession {

    // MARK: - Methods

    /// Retrieves the contents of the specified URL.
    /// - Parameters:
    ///   - url: The URL the data is to be retrieved from.
    /// - Returns: The data returned by the server and an object that provides response metadata, such as HTTP headers and status code.
    func data(from url: URL) async throws -> (Data, URLResponse)

}

// MARK: - WebServiceSession

extension URLSession: WebServiceSession { }
