//
//  ContentView.swift
//  ThemeChangeApp
//
//  Created by 13an on 2023/07/18.
//

import SwiftUI

struct ContentView: View {
    @State private var isSettingViewPresented = false
    @State private var colorTheme: ColorTheme = .mono
    @State private var selectedLanguageIndex = 0

    var body: some View {
        NavigationStack {
            CityListView(colorTheme: $colorTheme)
                .navigationTitle("City")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Setting") {
                            isSettingViewPresented.toggle()
                        }
                        .fontWeight(.bold)
                        .foregroundColor(colorTheme.text_accent_1)
                        .sheet(isPresented: $isSettingViewPresented) {
                            SettingView(colorTheme: $colorTheme)
                        }
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let localizationIds = ["en", "ja", "de"]
        ForEach(localizationIds, id: \.self) { id in
            ContentView()
                .previewDisplayName("Localized - \(id)")
                .environment(\.locale, .init(identifier: id))
        }
    }
}

