//
//  Character.swift
//  ApiRickandMorti
//
//  Created by Никита Микрюков on 22.09.2020.
//  Copyright © 2020 Никита Микрюков. All rights reserved.
//

struct Character: Decodable {
  let results: [Result]
}

struct Result: Decodable {
    let id: Int
    let name: String?
    let species: String?
    let gender: String?
    let image: String?
}



