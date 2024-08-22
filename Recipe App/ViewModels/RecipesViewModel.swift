//
//  RecipesViewModel.swift
//  Recipe App
//
//  Created by Surath Chathuranga on 2023-06-13.
//

import Foundation

class RecipesViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []
    
    init(){
        recipes = Recipe.all
    }
    
    func addRecipe(recipe: Recipe){
        recipes.append(recipe)
    }
}
