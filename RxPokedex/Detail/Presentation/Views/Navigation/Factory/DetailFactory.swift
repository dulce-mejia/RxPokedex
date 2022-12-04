//
//  DetailFactory.swift
//  RxPokedex
//
//  Created by Gardenia Mejia on 03/12/22.
//

import Foundation

struct DetailFactory {
    func makeDetailViewController(_ pokemon: Pokemon) -> PokemonDetailViewController {
        let viewModel = PokemonDetailViewModel(pokemon: pokemon)
        return PokemonDetailViewController(viewModel: viewModel)
    }
}
