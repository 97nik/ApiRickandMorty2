//
//  CoursesViewController.swift
//  ApiRickandMorti
//
//  Created by Никита Микрюков on 22.09.2020.
//  Copyright © 2020 Никита Микрюков. All rights reserved.
//
import UIKit

class CharacterViewController: UITableViewController {
    
    private var character: [Character] = []
    private var chracter: Character?
    private let urlString = "https://rickandmortyapi.com/api/character"

    
    override func viewDidLoad() {

        NetworkManager.shared.fetchData(from: urlString) {
                   character in DispatchQueue.main.async {
                       self.chracter = character
                       self.tableView.reloadData()
                   }
               }
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       chracter?.results.count ?? 1
        
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CharacterViewCell
        
      let result = chracter?.results[indexPath.row]
            cell.configure(with: result)
        return cell
    }

}


