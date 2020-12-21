//
//  CharacterResult.swift
//  GuideShops
//
//  Created by Hoff Henry Pereira da Silva on 20/12/20.
//

import Foundation

struct CharacterResult: Decodable {
    let info: Info
    let results: [Character]
}

struct Character: Decodable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let origin: Origin
    let location: Location
    let image: String
    let episode: [String]
    let url: String
    let created: String
}

struct Location: Decodable {
    let name: String
    let url: String
}

struct Origin: Decodable {
    let name: String
    let url: String
}

struct Info: Decodable {
    let count: Int
    let pages: Int
    let next: String
    let prev: String?
}

struct DetaileLocation: Decodable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
