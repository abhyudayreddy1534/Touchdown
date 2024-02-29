//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Sravanthi Chinthireddy on 28/02/24.
//

import Foundation

struct Category : Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
