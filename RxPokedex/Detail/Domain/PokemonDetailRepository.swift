//
//  PokemonDetailRepository.swift
//  RxPokedex
//
//  Created by Gardenia Mejia on 03/12/22.
//

import RxSwift

protocol PokemonDetailRepository {
    func fetchPokemonDetail(_ url: String) -> Observable<PokemonDetail>
}
