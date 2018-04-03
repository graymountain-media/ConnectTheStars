//
//  Constants.swift
//  ConnectTheStars
//
//  Created by Jake Gray on 4/3/18.
//  Copyright © 2018 Jake Gray. All rights reserved.
//

import Foundation

struct api {
    private init() {}
    
    static let keyValue: String = "9fa7c53afd1a356938f313cdd7025737"
    static let url = URL(string: "https://api.themoviedb.org/3/")
    
    //Queries
    static let actor = "person"
    static let movie = "movie"
    static let key = "api_key"
}
