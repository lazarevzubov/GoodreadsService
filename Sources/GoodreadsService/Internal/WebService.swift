//
//  WebService.swift
//  
//
//  Created by Nikita Lazarev-Zubov on 15.4.2020.
//

// TODO: HeaderDoc.

protocol WebService {
    
    // MARK: - Methods
    
    func searchBooks(_ query: String, resultCompletion: (_ ids: [String]) -> Void)
    func getBook(by id: String, resultCompletion: (_ ids: [Book]) -> Void)
    
}

// MARK: - 

struct WebDefaultService: WebService {

    // MARK: - Properties

    // MARK: Private properties

    private let key: String

    // MARK: - Initialization

    init(key: String) {
        self.key = key
    }
    
    // MARK: - Methods
    
    // MARK: WebService protocol methods
    
    func searchBooks(_ query: String, resultCompletion: (_ ids: [String]) -> Void) {
        // TODO
    }
    
    func getBook(by id: String, resultCompletion: (_ ids: [Book]) -> Void) {
        // TODO
    }
    
}
