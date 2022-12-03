//
//  PokemonListEndpoint.swift
//  RxPokedex
//
//  Created by Gardenia Mejia on 27/11/22.
//

import Foundation

struct PokemonListEndpoint: Endpoint {
    var path: String {
        "/api/v2/pokemon"
    }
    
    var queryItems: [String : String] = ["limit":"151"]
}
