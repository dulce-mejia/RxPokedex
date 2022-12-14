//
//  PokemonListRepositoryImp.swift
//  RxPokedex
//
//  Created by Gardenia Mejia on 27/11/22.
//

import RxSwift

final class PokemonListRepositoryImp: PokemonListRepository {
    
    private let client: HTTPClient
    init(client: HTTPClient) {
        self.client = client
    }
    
    struct PokemonDTO: Codable {
        let name: String
        let url: String
        
        var pokemon: Pokemon {
            Pokemon(name: name,
                    url: url)
        }
    }
    
    struct PokemonPageResultDTO: Codable {
        let count: Int
        let next: String
        let previous: String?
        let results: [PokemonDTO]
    }
    
    func fetchPokemonList() -> Observable<[Pokemon]> {
        let endpoint = PokemonListEndpoint()
        let finalUrl = endpoint.urlComponents?.url
        print("finalUrl: ", finalUrl)
        return client.get(from: finalUrl!)
            .map { response, data -> PokemonPageResultDTO in
                guard let jsonObject = try? JSONDecoder().decode(PokemonPageResultDTO.self, from: data) else {
                    return PokemonPageResultDTO(count: 1, next: "", previous: nil, results: [])
                }
                return jsonObject
            }
            .map { pokemonPage -> [Pokemon] in
                return pokemonPage.results.map {$0.pokemon}
            }
    }
}
