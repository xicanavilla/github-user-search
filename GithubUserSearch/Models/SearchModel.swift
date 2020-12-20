//
//  SearchModel.swift
//  GithubUserSearch
//
//  Created by Margarita Villa on 12/20/20.
//  Copyright © 2020 Udacity. All rights reserved.
//

import Foundation

struct SearchModel: Codable {
    var totalCount: Int
    var incompleteResults: Bool
    
    enum CodingKeys: String, CodingKey {
        case totalCount = "total_count"
        case incompleteResults = "incomplete_results"
    }
}
