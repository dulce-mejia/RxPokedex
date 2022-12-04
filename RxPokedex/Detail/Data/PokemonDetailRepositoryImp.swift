//
//  PokemonDetailRepositoryImp.swift
//  RxPokedex
//
//  Created by Gardenia Mejia on 03/12/22.
//

import RxSwift

final class PokemonDetailRepositoryImp: PokemonDetailRepository {
    
    private let client: HTTPClient
    init(client: HTTPClient) {
        self.client = client
    }
    
    struct PokemonDetailDTO: Codable {
        let id: Int
        let name: String
        let weight: Double
        let height: Double
        
        var pokemonDetail: PokemonDetail {
            PokemonDetail(id: id, name: name, weight: weight, height: height)
        }
    }
    
    func fetchPokemonDetail(_ url: String) -> Observable<PokemonDetail> {
        let finalUrl = URL(string: url)
        return client.get(from: finalUrl!)
            .map { response, data -> PokemonDetailDTO in
                guard let jsonObject = try? JSONDecoder().decode(PokemonDetailDTO.self, from: data) else {
                    return PokemonDetailDTO(id: 1, name: "bulbasaur", weight: 100, height: 30)
                }
                return jsonObject
            }
            .map {
                $0.pokemonDetail
            }
            
    }
}
