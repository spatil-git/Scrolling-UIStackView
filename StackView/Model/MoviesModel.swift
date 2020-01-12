//
//  MoviesModel.swift
//  StackView
//
//  Created by Sanjay Patil on 1/11/20.
//  Copyright © 2020 Sanjay Patil. All rights reserved.
//

import Foundation
struct Model:Codable {
    let name:String
    let review:String
    let rating:String
}

class MoviesModel {
    func loadJsonModel() -> [Model] {
        let bundle = Bundle.main
        guard let jsonFile = bundle.url(forResource: "Movies", withExtension: "json") else {
            fatalError("Moview Model not present!!")
        }
        let data = try! Data(contentsOf: jsonFile)
        return try! JSONDecoder().decode([Model].self, from: data)
    }
}

