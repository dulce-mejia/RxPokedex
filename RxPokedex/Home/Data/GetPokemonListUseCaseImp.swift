//
//  GetPokemonListUseCaseImp.swift
//  RxPokedex
//
//  Created by Gardenia Mejia on 27/11/22.
//

import RxSwift

final class GetPokemonListUseCaseImp: GetPokemonListUseCase {
    private let repository: PokemonListRepository
    
    init(repository: PokemonListRepository) {
        self.repository = repository
    }
    
    func getPokemonList() -> Observable<[Pokemon]> {
        
        return repository.fetchPokemonList()
    }
}
