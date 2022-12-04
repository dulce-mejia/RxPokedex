//
//  GetPokemonDetailUseCaseImp.swift
//  RxPokedex
//
//  Created by Gardenia Mejia on 03/12/22.
//

import RxSwift

final class GetPokemonDetailUseCaseImp: GetPokemonDetailUseCase {
    
    private let repository: PokemonDetailRepository
    init(_ repository: PokemonDetailRepository) {
        self.repository = repository
    }
    
    func getDetail(_ url: String) -> Observable<PokemonDetail> {
        repository.fetchPokemonDetail(url)
    }
}
