//
//  AppDataServcie.swift
//  c9s
//
//  Created by morpheus on 10.04.21.
//

import Foundation

class AppDataService {
    func getUsers(completion: @escaping ([User]) -> Void) {
        DispatchQueue.main.async {
            completion([
                User(id: 1, name: "John"),
                User(id: 2, name: "Jane"),
                User(id: 3, name: "Jack"),
                User(id: 4, name: "Chuck")
            ])
        }
    }
}
