//
//  Recipe.swift
//  ListUI
//
//  Created by Daniella Onishi on 06/07/21.
//

import Foundation

struct recipe: Hashable, Codable {
    var title: String
    var numberOfIngredients: Int
    var ingredients: String
    var bodyText: String
}
