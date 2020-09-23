//
//  NetworkManagerEp.swift
//  ApiRickandMorti
//
//  Created by Никита Микрюков on 22.09.2020.
//  Copyright © 2020 Никита Микрюков. All rights reserved.
//
import Foundation

class NetworkManagerEp {
    
    static let shared = NetworkManagerEp()
    
    func fetchData(from urlString: String, with complition: @escaping (Episode) -> Void) {
        
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            if let error = error { print(error); return }
            guard let data = data else { return }
            
            do {
                let episode = try JSONDecoder().decode(Episode.self, from: data)
                complition(episode)
            } catch let jsonError {
                print(jsonError.localizedDescription)
            }
            
        }.resume()
    }
}
