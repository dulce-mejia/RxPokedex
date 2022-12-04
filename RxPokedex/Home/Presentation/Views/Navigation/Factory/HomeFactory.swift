//
//  HomeFactory.swift
//  RxPokedex
//
//  Created by Z447281 on 25/11/22.
//

import Foundation

struct HomeFactory {
    func makeHomeViewController(client: HTTPClient) -> HomeViewController {
        let repo = PokemonListRepositoryImp(client: client)
        let useCase = GetPokemonListUseCaseImp(repository: repo)
        let viewModel = PokemonListViewModel(useCase: useCase)
        return HomeViewController(viewModel: viewModel)
    }
}
