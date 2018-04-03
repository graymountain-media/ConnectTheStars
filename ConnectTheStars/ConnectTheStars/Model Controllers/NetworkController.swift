//
//  NetworkController.swift
//  ConnectTheStars
//
//  Created by Jake Gray on 4/3/18.
//  Copyright © 2018 Jake Gray. All rights reserved.
//

import Foundation

class NetworkController {
    
    init() {
    }
    
    let baseUrl: URL = api.url!
    let actor: Actor?
    let movies: [Movie] = []
    
    func fetchActor(withName name: String, completion: @escaping(Bool) -> Void) {
        
        let queries = [
            api.actor : name,
            api.key : api.keyValue
        ]
        
        let url = baseUrl.withQueries(queries)!
        
        let dataTask = URLSession.shared.dataTask(URL: urld) { (data, _, error) in
            
            if let error = error {
                print("Error decoding data: \(error)")
                completion(false)
            }
            if let data = data {
                do{
                    let jsonDecoder = JSONDecoder()
                    let personDict = try jsonDecoder.decode(PersonDictionary.self, from: data)
                    
                    let persons = PersonDictionary
                }
            }
        }
    }
}

extension URL {
    func withQueries(_ queries: [String: String]) -> URL? {
        var components = URLComponents(url: self,
                                       resolvingAgainstBaseURL: true)
        components?.queryItems = queries.flatMap
            { URLQueryItem(name: $0.0, value: $0.1) }
        return components?.url
    }
}
