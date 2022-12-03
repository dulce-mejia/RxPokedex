//
//  PokemonListViewModel.swift
//  RxPokedex
//
//  Created by Gardenia Mejia on 27/11/22.
//

import RxSwift
import RxCocoa

final class PokemonListViewModel {
    // let input: Input
    /*struct Input {
    }*/
    struct Output {
        let pokemonList: Driver<[Pokemon]>
    }
    let output: Output
    
    init(useCase: GetPokemonListUseCase) {
        self.output = Output(pokemonList: useCase.getPokemonList()
            .asDriver(onErrorJustReturn: []))
    }
}
