//
//  PokemonDetailViewModel.swift
//  RxPokedex
//
//  Created by Gardenia Mejia on 03/12/22.
//

import Foundation

final class PokemonDetailViewModel {
    
    private let pokemon: Pokemon
    init(pokemon: Pokemon) {
        self.pokemon = pokemon
    }
    
    func getName() -> String {
        pokemon.name
    }
}
