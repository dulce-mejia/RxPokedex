//
//  FetchPokemonListUseCase.swift
//  RxPokedex
//
//  Created by Gardenia Mejia on 27/11/22.
//
import RxSwift

protocol GetPokemonListUseCase {
    func getPokemonList() -> Observable<[Pokemon]>
}
