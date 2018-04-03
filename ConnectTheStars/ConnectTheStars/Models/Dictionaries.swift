//
//  JSONDictionary.swift
//  ConnectTheStars
//
//  Created by Jake Gray on 4/3/18.
//  Copyright © 2018 Jake Gray. All rights reserved.
//

import Foundation

struct IMDBDictionary: Decodable {
    let person_results: [Actor]
}

struct PersonDictionary: Decodable  {
    let imdb_id: String
}
