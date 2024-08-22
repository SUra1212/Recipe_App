//
//  AddRecipeView.swift
//  Recipe App
//
//  Created by Surath Chathuranga on 2023-06-13.
//

import SwiftUI
import PhotosUI

struct AddRecipeView: View {
    @State private var name: String = ""
    @State private var selectCategory: Category = Category.main
    @State private var description: String = ""
    @State private var ingrediant: String = ""
    @State private var direction: String = ""
    @State private var navigateToRecipe = false
    @State private var avatarItem: PhotosPickerItem?
    @State private var avatarImage: Image?
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var recipeVM: RecipesViewModel

    var body: some View {
        NavigationView{
            Form{
                VStack {
                           PhotosPicker("Select Image", selection: $avatarItem, matching: .images)
                           if let avatarImage {
                               avatarImage
                                   .resizable()
                                   .scaledToFit()
                                   .frame(width: 200, height: 200)
                           }
                       }
                       .onChange(of: avatarItem) { _ in
                           Task {
                               if let data = try? await avatarItem?.loadTransferable(type: Data.self) {
                                   if let uiImage = UIImage(data: data) {
                                       avatarImage = Image(uiImage: uiImage)
                                       return
                                   }
                               }
                               print("Failed")
                           }
                       }
                
                Section(header: Text("Name")){
                    TextField("Recipe Name", text: $name)
                        
                }
                Section(header: Text("Category")){
                    Picker("Select Category", selection: $selectCategory){
                        ForEach(Category.allCases){
                            category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }
                    .pickerStyle(.menu)
                }
                Section(header: Text("Description")){
                    TextField("",text: $description)
                        .frame(minHeight: 100,alignment: .top)
                       
                }
                Section(header: Text("Ingredients")){
                    TextField("",text: $ingrediant)
                        .frame(minHeight: 100,alignment: .top)
                }
                Section(header: Text("Directions")){
                    TextField("",text: $direction)
                        .frame(minHeight: 100,alignment: .top)
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading){
                    Button{
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }
                ToolbarItem{
                    NavigationLink(isActive: $navigateToRecipe) {
                        TabBar()
                        RecipeView(recipe: recipeVM.recipes.sorted{$0.datePublished >
                            $1.datePublished}[0])
                        .navigationBarBackButtonHidden(true)
                    } label: {
                        Button{
                            saveRecipe()
                            navigateToRecipe = true
                        } label: {
                            Label("Done", systemImage: "checkmark")
                                .labelStyle(.iconOnly)
                        }
                        
                    }
                    .disabled(name.isEmpty)
                }
            })
            .navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
    }
}

extension AddRecipeView {
    private func saveRecipe(){
        let now = Date()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd"
        
        let datePublished = dateFormatter.string(from: now)
        print(datePublished)
        
        let recipe = Recipe(name: name, image: "", description: description, ingredients: ingrediant, directions: direction, category: selectCategory.rawValue, datePublished: "", url: "")
        
        recipeVM.addRecipe(recipe: recipe)
    }
}
