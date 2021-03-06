//
//  NetworkController.swift
//  RandomUserAPI
//
//  Created by Justin Herzog on 12/20/18.
//  Copyright © 2018 Justin Herzog. All rights reserved.
//

import Foundation

struct NetworkController {
    
    func fetchRandomUsers(searchTerm: String, completion: @escaping ([User]?) -> Void) {
        
        let baseURL = URL(string: "https://randomuser.me/api/?results=100&name=\(searchTerm)")
        
        let task = URLSession.shared.dataTask(with: baseURL!) { (data, response, error) in
            if let data = data,
                let rawJSON = try? JSONSerialization.jsonObject(with: data),
                let json = rawJSON as? [String: AnyObject] {
                var results: [User] = []
                if let resultsArray = json["results"] as? [[String: AnyObject]] {
                    results = resultsArray.compactMap { User(dictionary: $0)}
                }
                completion(results)
            } else {
                print("Either no data was returned, or data was not serialized.")
                
                completion(nil)
                return
            }
            
        }
        task.resume()
    }
}
