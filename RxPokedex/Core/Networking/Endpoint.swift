//
//  Endpoint.swift
//  RxPokedex
//
//  Created by Gardenia Mejia on 27/11/22.
//

import Foundation

protocol Endpoint {
    var path: String { get }
    var queryItems: [String : String] { get }
}
extension Endpoint {
    private var base: String {
    "https://pokeapi.co/api"
    }
    
    var urlComponents: URLComponents? {
        guard let components = URLComponents(string: base) else { return nil }
        var newComponents = components
        newComponents.path = path
        newComponents.queryItems = queryItems.map { URLQueryItem(name: $0, value: $1) }
        return newComponents
    }
}
