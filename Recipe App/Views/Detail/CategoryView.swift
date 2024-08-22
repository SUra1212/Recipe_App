//
//  CategoryView.swift
//  Recipe App
//
//  Created by Surath Chathuranga on 2023-06-13.
//

import SwiftUI

struct CategoryView: View {
    @EnvironmentObject var recipeVM: RecipesViewModel

    var category: Category
    
    var recipes: [Recipe] {
        return recipeVM.recipes.filter{ $0.category == category.rawValue}
    }
    
    var body: some View {
        ScrollView{
            RecipeList(recipes: recipes)
        }
        .navigationTitle(category.rawValue + "s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.soup)
            .environmentObject(RecipesViewModel())
    }
}
