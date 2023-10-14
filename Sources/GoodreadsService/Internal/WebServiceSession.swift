//
//  WebServiceSession.swift
//  
//
//  Created by Nikita Lazarev-Zubov on 13.5.2020.
//

import Foundation

/// Represents a single web service task.
protocol WebServiceTask {

    // MARK: - Methods

    /// Starts the task.
    func resume()

}

// MARK: - WebServiceTask

extension URLSessionTask: WebServiceTask { }

// MARK: -

/// Coordinates a group of web service tasks.
protocol WebServiceSession {

    associatedtype Task: WebServiceTask

    // MARK: - Methods

    /// Creates a task that retrieves the contents of the specified URL, then calls a handler upon completion.
    /// - Parameters:
    ///   - url: The URL to be retrieved.
    ///   - completionHandler: The completion handler to call when the load request is complete.
    ///   - data: The data returned by the server.
    ///   - response: An object that provides response metadata, such as HTTP headers and status code.
    ///   - error: An error object that indicates why the request failed, or `nil` if the request was successful.
    /// - Returns: The new session data task.
    func dataTask(with url: URL,
                  completionHandler: @Sendable @escaping (_ data: Data?,
                                                          _ response: URLResponse?,
                                                          _ error: Error?) -> Void) -> Task

}

// MARK: - WebServiceSession

extension URLSession: WebServiceSession {

    typealias Task = URLSessionDataTask

}
