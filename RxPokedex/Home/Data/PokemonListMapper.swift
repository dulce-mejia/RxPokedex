//
//  PokemonListMapper.swift
//  RxPokedex
//
//  Created by Gardenia Mejia on 27/11/22.
//

import RxSwift

final class PokemonListMapper {
    struct PokemonDTO: Codable {
        let name: String
        let url: String
        
        var pokemon: Pokemon {
            Pokemon(name: name,
                    url: url)
        }
    }
    
    struct PokemonPageResultDTO: Codable {
        let count: Int
        let next: String
        let result: [PokemonDTO]
    }
}
