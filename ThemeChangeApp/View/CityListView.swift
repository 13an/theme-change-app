//
//  CityListView.swift
//  ThemeChangeApp
//
//  Created by 13an on 2023/07/18.
//

import SwiftUI

struct CityListView: View {
    @ObservedObject var cityModel = CityModel()
    @Binding var colorTheme: ColorTheme
    @State private var selectedLanguageIndex = 0
    @State private var isSettingViewPresented = false
    
    var body: some View {
        List(cityModel.cities, id: \.self) { city in
            CityListItemView(colorTheme: $colorTheme, city: city)
                .listRowBackground(colorTheme.background_1)
                .listRowSeparator(.hidden)
                .cornerRadius(24)
        }
        .listStyle(.plain)
        .background(colorTheme.background_1)
    }
}

struct CityListView_Previews: PreviewProvider {
    static var previews: some View {
        let localizationIds = ["en", "ja", "de"]
        ForEach(localizationIds, id: \.self) { id in
            CityListView(colorTheme: .constant(.terminal))
                .previewDisplayName("Localized - \(id)")
                .environment(\.locale, .init(identifier: id))
        }
    }
}
