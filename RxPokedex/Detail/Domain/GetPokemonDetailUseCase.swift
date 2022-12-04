//
//  GetPokemonDetailUseCase.swift
//  RxPokedex
//
//  Created by Gardenia Mejia on 03/12/22.
//

import RxSwift

protocol GetPokemonDetailUseCase {
    func getDetail(_ url: String) -> Observable<PokemonDetail>
}
