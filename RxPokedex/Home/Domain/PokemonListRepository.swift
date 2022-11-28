//
//  PokemonListRepository.swift
//  RxPokedex
//
//  Created by Gardenia Mejia on 27/11/22.
//

import RxSwift

protocol PokemonListRepository {
    func fetchPokemonList() -> Observable<[Pokemon]>
}
