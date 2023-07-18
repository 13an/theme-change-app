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

//        .toolbar {
//            ToolbarItem {
//                Button(action: {
//                    isSettingViewPresented.toggle()
//                }) {
//                    Text("Setting")
//                        .foregroundColor(.blue)
//                        .padding()
//                }
//            }
//        }
    }
}

struct CityListView_Previews: PreviewProvider {
    static var previews: some View {
        CityListView(colorTheme: .constant(.orange))
    }
}
