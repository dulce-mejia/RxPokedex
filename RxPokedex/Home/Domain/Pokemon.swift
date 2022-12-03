//
//  Pokemon.swift
//  RxPokedex
//
//  Created by Gardenia Mejia on 27/11/22.
//
import Foundation

struct Pokemon: Identifiable {
    let id: UUID = UUID()
    let name: String
    let url: String
}
