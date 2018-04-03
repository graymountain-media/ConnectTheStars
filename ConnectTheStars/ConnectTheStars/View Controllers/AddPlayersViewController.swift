//
//  AddPlayersViewController.swift
//  ConnectTheStars
//
//  Created by Jake Gray on 4/2/18.
//  Copyright © 2018 Jake Gray. All rights reserved.
//

import UIKit

class AddPlayersViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var playersTableView: UITableView!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playersTableView.delegate = self
        playersTableView.dataSource = self
    }

    // MARK: - Actions

    @IBAction func addPlayerTapped(_ sender: UIButton) {
        guard let name = nameTextField.text, !name.isEmpty else {return}
        
        PlayerController.shared.addPlayer(withName: name)
        playersTableView.reloadData()
        nameTextField.text = ""
    }
    
    // MARK: - TableView
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PlayerController.shared.players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "playerCell")
        
        let player = PlayerController.shared.players[indexPath.row]
        
        cell?.textLabel?.text = player.name
        
        return cell
    }
    
}


