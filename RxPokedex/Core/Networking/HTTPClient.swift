//
//  HTTPClient.swift
//  RxPokedex
//
//  Created by Gardenia Mejia on 27/11/22.
//
import RxSwift

protocol HTTPClient {
    func get(from url: URL) -> Observable<(response: HTTPURLResponse, data: Data)>
    func post(from url: URL, data: Data) -> Observable<(response: HTTPURLResponse, data: Data)>
    func put(from url: URL, data: Data) -> Observable<(response: HTTPURLResponse, data: Data)>
    func patch(from url: URL, data: Data) -> Observable<(response: HTTPURLResponse, data: Data)>
    func delete(from url: URL) -> Observable<(response: HTTPURLResponse, data: Data)>
}

extension HTTPURLResponse {
    private static var OK_200: Int { 200 }

    var isOK: Bool {
        statusCode == HTTPURLResponse.OK_200
    }
}
