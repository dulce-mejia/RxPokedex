//
//  DetailFactory.swift
//  RxPokedex
//
//  Created by Gardenia Mejia on 03/12/22.
//

import Foundation

struct DetailFactory {
    func makeDetailViewController(_ url: String, client: HTTPClient) -> PokemonDetailViewController {
        let repository = PokemonDetailRepositoryImp(client: client)
        let useCase = GetPokemonDetailUseCaseImp(repository)
        let viewModel = PokemonDetailViewModel(url: url, useCase: useCase)
        return PokemonDetailViewController(viewModel: viewModel)
    }
}
