//
//  Recipe_AppApp.swift
//  Recipe App
//
//  Created by Surath Chathuranga on 2023-06-13.
//

import SwiftUI
import Firebase

@main
struct Recipe_AppApp: App {
    init(){
        FirebaseApp.configure()
    }
    @StateObject var recipesViewModel = RecipesViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}
