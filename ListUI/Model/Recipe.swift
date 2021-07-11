//
//  Recipe.swift
//  ListUI
//
//  Created by Daniella Onishi on 06/07/21.
//

import Foundation

struct Recipe: Hashable, Codable {
    var image: String
    var title: String
    var numberOfIngredients: Int
    var ingredients: String
    var bodyText: String
}

struct RecipeStructure {
    
    static let recipeBody = [
        Recipe(image: "AvocadoToast", title: "Avocado Toast", numberOfIngredients: 0, ingredients: "", bodyText: ""),
        
        Recipe(image: "FrenchToast", title: "French Toast", numberOfIngredients: 5, ingredients: "1 egg \n1 teaspoon Vanilla Extract \n1/2 teaspoon Ground Cinnamon \n1/4 cup milk \n4 slices bread", bodyText: "To start making this easy French toast recipe you will need to beat an egg, vanilla and cinnamon in shallow dish. Stir in milk.\nDip bread in egg mixture, turning to coat both sides evenly. \nCook bread slices on lightly greased nonstick griddle or skillet on medium heat until browned on both sides. Serve with Easy Spiced Syrup (recipe follows), if desired. Voila, easy French toast. \nEasy Spiced Syrup: Add 1 teaspoonVanilla Extract and 1/4 teaspoon Ground Cinnamon to 1 cup pancake syrup; stir well to mix. Serve warm, if desired."),
        
        Recipe(image: "OrangePancakes", title: "Orange Pancakes", numberOfIngredients: 0, ingredients: "", bodyText: ""),
        Recipe(image: "PearDessert", title: "Pear Dessert", numberOfIngredients: 0, ingredients: "", bodyText: ""),
        Recipe(image: "Ratao", title: "Big Rat with potatos (a little burnt)", numberOfIngredients: 3, ingredients: "Rat \nPotato", bodyText: ""),
        
    
    ]
    
}

