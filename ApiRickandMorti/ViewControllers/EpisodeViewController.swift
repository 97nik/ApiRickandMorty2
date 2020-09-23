//
//  EpisodeViewController.swift
//  ApiRickandMorti
//
//  Created by Никита Микрюков on 22.09.2020.
//  Copyright © 2020 Никита Микрюков. All rights reserved.
//
import UIKit

class EpisodeViewController: UICollectionViewController {
    
    private var episode: [Episode] = []
    private var epsode: Episode?
    private let urlString = "https://rickandmortyapi.com/api/episode"
    
    override func viewDidLoad() {
         
            NetworkManagerEp.shared.fetchData(from: urlString) {
                       episode in DispatchQueue.main.async {
                           self.epsode = episode
                           self.collectionView.reloadData()
                       }
                   }
        }

        // MARK: - Table view data source
      override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
           epsode?.results.count ?? 1
        }

        override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
           let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)as! EpisodeActionCell
             
           let result = epsode?.results[indexPath.row]
                 cell.configure(with: result)
            
            return cell
        }

    }
    


