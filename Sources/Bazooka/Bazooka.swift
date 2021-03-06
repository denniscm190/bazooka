//
//  Bazooka.swift
//  Bazooka
//
//  Created by Dennis Concepción Martín on 25/5/21.
//

import Foundation

public class Bazooka {
    public init () {}
    
    // Simple network request
    public func request<T: Decodable>(url: String, model: T.Type, completion: @escaping (_ result: T) -> Void) {
        // We take some model data T.Type
        guard let url = URL(string: url) else {
            print("Invalid URL")
            return
        }
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                do {
                    // Decode response with the model passed
                    let decodedResponse = try JSONDecoder().decode(model, from: data)
                    DispatchQueue.main.async {
                        completion(decodedResponse)
                    }
                    return
                } catch {
                    // Return error regarding the escaping code
                    print(error)
                }
            }
            // Error with the request
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
        }
        .resume()
    }
}
