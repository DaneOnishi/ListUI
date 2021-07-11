//
//  Card.swift
//  ListUI
//
//  Created by Daniella Onishi on 08/07/21.
//

import Foundation

struct CardInfo:  Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var description: String   
}

struct recipeCardStructure: Decodable {
    static let recipeCardBody = [
    CardInfo(image: "AvocadoToast", title: "Avocado Toast", description: "20 min | 3 ingredients"),
    CardInfo(image: "FrenchToast", title: "French Toast", description: "20 min | 3 ingredients"),
    CardInfo(image: "OrangePancakes", title: "Orange Pancakes", description: "120 min | 6 ingredients"),
    CardInfo(image: "PearDessert", title: "Pear Dessert", description: "120 min | 3 ingredients")
    
    ]
    
    
}
