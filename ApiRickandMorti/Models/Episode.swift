//
//  Episode.swift
//  ApiRickandMorti
//
//  Created by Никита Микрюков on 22.09.2020.
//  Copyright © 2020 Никита Микрюков. All rights reserved.
//
//
struct Episode: Decodable {
    let results: [ResultEpisode]
}

struct ResultEpisode: Decodable {
    let id: Int?
    let name: String?
    let air_date: String?
    let episode: String?
}
