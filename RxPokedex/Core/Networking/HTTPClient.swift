//
//  HTTPClient.swift
//  RxPokedex
//
//  Created by Gardenia Mejia on 27/11/22.
//
import RxSwift

protocol HTTPClient {
    func get(from url: URL) -> Observable<Data>
    func post(from url: URL, data: Data) -> Observable<Data>
    func put(from url: URL, data: Data) -> Observable<Data>
    func patch(from url: URL, data: Data) -> Observable<Data>
    func delete(from url: URL) -> Observable<Data>
}
