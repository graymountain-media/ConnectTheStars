//
//  PlayerController.swift
//  ConnectTheStars
//
//  Created by Jake Gray on 4/2/18.
//  Copyright © 2018 Jake Gray. All rights reserved.
//

import Foundation

class PlayerController {
    static let shared = PlayerController()
    var players: [Player] = []
    
    private init(){
        
    }
    
    func addPlayer(withName name: String){
        let newPlayer = Player(name: name)
        players.append(newPlayer)
    }
    
    func remove(player: Player){
        guard let index = players.index(of: player) else {return}
        players.remove(at: index)
    }
}
