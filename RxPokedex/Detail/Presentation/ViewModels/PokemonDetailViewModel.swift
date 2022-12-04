//
//  PokemonDetailViewModel.swift
//  RxPokedex
//
//  Created by Gardenia Mejia on 03/12/22.
//

import RxSwift

final class PokemonDetailViewModel {
    
    struct Output {
        let detail: Observable<PokemonDetail>
    }
    let output: Output
    
    init(url: String, useCase: GetPokemonDetailUseCase) {
        self.output = Output(detail: useCase.getDetail(url))
    }
    
}
