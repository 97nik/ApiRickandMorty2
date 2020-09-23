//
//  MainViewController.swift
//  ApiRickandMorti
//
//  Created by Никита Микрюков on 22.09.2020.
//  Copyright © 2020 Никита Микрюков. All rights reserved.
//

import UIKit

enum Sections: String, CaseIterable {
    case characters = "Characters"
    case episodes = "Episodes"
}

class MainViewController: UICollectionViewController {
    
    private let sections = Sections.allCases

    // MARK: - UICollectionViewDataSource
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        sections.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MainViewCell
    
        let userAction = sections[indexPath.item]
        cell.userActionLabel.text = userAction.rawValue
    
        return cell
    }

   // MARK: - UICollectionViewDelegate
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let userAction = sections[indexPath.item]
        
        switch userAction {
            case .characters: performSegue(withIdentifier: "showCourses", sender: nil)
            case .episodes: performSegue(withIdentifier: "showEpisode", sender: nil)

        }
    }
    
 

}



