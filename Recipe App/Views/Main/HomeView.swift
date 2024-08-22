//
//  HomeView.swift
//  Recipe App
//
//  Created by Surath Chathuranga on 2023-06-13.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var recipeVM: RecipesViewModel
    
    var body: some View {
        NavigationView{
            ScrollView{
                RecipeList(recipes: recipeVM.recipes)
            }
            .navigationTitle("New Recipes")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(RecipesViewModel())
    }
}
