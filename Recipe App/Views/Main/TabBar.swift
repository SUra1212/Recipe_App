//
//  TabBar.swift
//  Recipe App
//
//  Created by Surath Chathuranga on 2023-06-13.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            
            CategoriesView()
                .tabItem{
                    Label("Categories", systemImage: "square.fill.text.grid.1x2")
                }
            
            NewRecipeView()
                .tabItem{
                    Label("New", systemImage: "plus")
                }
            
            LocationView()
                .tabItem{
                    Label("Location", systemImage: "location.circle")
                }
            
            ProfileView()
                .tabItem{
                    Label("Profile", systemImage: "person.crop.circle.fill")
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .environmentObject(RecipesViewModel())

    }
}
