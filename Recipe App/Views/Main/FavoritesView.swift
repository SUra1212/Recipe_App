//
//  FavoritesView.swift
//  Recipe App
//
//  Created by Surath Chathuranga on 2023-06-13.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView{
            Text("You haven't saved any recipe to your favorites yet.")
                .navigationTitle("Favorites")

        }
        .navigationViewStyle(.stack)
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
