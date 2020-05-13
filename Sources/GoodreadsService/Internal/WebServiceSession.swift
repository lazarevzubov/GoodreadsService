//
//  WebServiceSession.swift
//  
//
//  Created by Nikita Lazarev-Zubov on 13.5.2020.
//

import Foundation

// TODO: HeaderDoc.
protocol WebServiceTask {

    // MARK: - Methods

    // TODO: HeaderDoc.
    func resume()

}

// MARK: - WebServiceTask

extension URLSessionTask: WebServiceTask { }

// MARK: -

// TODO: HeaderDoc.
protocol WebServiceSession {

    associatedtype Task: WebServiceTask

    // MARK: - Methods

    // TODO: HeaderDoc.
    func dataTask(with url: URL, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> Task

}

// MARK: - WebServiceSession

extension URLSession: WebServiceSession { }
