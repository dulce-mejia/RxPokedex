//
//  PokemonListViewModel.swift
//  RxPokedex
//
//  Created by Gardenia Mejia on 27/11/22.
//

import RxSwift

final class PokemonListViewModel {
    
    private let disposeBag = DisposeBag()
    private let useCase: GetPokemonListUseCase
    
    init(useCase: GetPokemonListUseCase) {
        self.useCase = useCase
    }
    
    func loadPokemon() {
        useCase.getPokemonList()
            .subscribe { lista in
                print(lista)
            }
            .disposed(by: disposeBag)
    }
}
