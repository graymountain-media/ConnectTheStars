//
//  Actor.swift
//  ConnectTheStars
//
//  Created by Jake Gray on 4/3/18.
//  Copyright © 2018 Jake Gray. All rights reserved.
//

import Foundation

struct Actor: Decodable{
    let name: String
    let known_for: [Movie]
}
