//
//  SettingsView.swift
//  Recipe App
//
//  Created by Surath Chathuranga on 2023-06-13.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView{
            Text("v1.0.0")
                .navigationTitle("Settings")

        }
        .navigationViewStyle(.stack)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
