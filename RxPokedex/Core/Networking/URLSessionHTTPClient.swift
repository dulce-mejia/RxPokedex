//
//  URLSessionHTTPClient.swift
//  RxPokedex
//
//  Created by Gardenia Mejia on 27/11/22.
//

import RxSwift
import RxCocoa

final class URLSessionHTTPClient: HTTPClient {
    
    private let session: URLSession
    init(session: URLSession) {
        self.session = session
    }
    
    private enum HTTPMethod: String {
        case post = "POST"
        case put = "PUT"
        case patch = "PATCH"
        case delete = "DELETE"
    }
    
    private enum Strings {
        static let contentType = "Content-Type"
        static let applicationJson = "application/json"
    }
    
    func get(from url: URL) -> RxSwift.Observable<(response: HTTPURLResponse, data: Data)> {
        let urlRequest = URLRequest(url: url)
        return session.rx.response(request: urlRequest)
    }
    
    func post(from url: URL, data: Data) -> RxSwift.Observable<(response: HTTPURLResponse, data: Data)> {
        // TODO: post implementation
        let urlRequest = URLRequest(url: url)
        return session.rx.response(request: urlRequest)
    }
    
    func put(from url: URL, data: Data) -> RxSwift.Observable<(response: HTTPURLResponse, data: Data)> {
        // TODO: put implementation
        let urlRequest = URLRequest(url: url)
        return session.rx.response(request: urlRequest)
    }
    
    func patch(from url: URL, data: Data) -> RxSwift.Observable<(response: HTTPURLResponse, data: Data)> {
        // TODO: patch implementation
        let urlRequest = URLRequest(url: url)
        return session.rx.response(request: urlRequest)
    }
    
    func delete(from url: URL) -> RxSwift.Observable<(response: HTTPURLResponse, data: Data)> {
        // TODO: delete implementation
        let urlRequest = URLRequest(url: url)
        return session.rx.response(request: urlRequest)
    }
    
    
}
