//
//  APICaller.swift
//  Netflix Clone
//
//  Created by Seyma on 9.08.2023.
//

import Foundation

struct Constants {
    static let API_KEY = "  "
    static let baseURL = "https://api.themoviedb.org"
}

enum APIError: Error {
    case failedTogetData
}

class APICaller {
    static let shared = APICaller()
    
    func getTrendingMovies(completion: @escaping (Result<[Movie], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/all/day?api_keys=\(Constants.API_KEY)") else { return }
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else { return }
            
            do {
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                completion(.success(results.results))
                /*
                 let results = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
                 print(results)
                 */
            } catch {
                completion(.failure(error))
            }
            
        }
        task.resume()
        
    }
}
