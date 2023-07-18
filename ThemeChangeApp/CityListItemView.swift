//
//  CityListItemView.swift
//  ThemeChangeApp
//
//  Created by 13an on 2023/07/18.
//

import SwiftUI

struct CityListItemView: View {
    @EnvironmentObject var cityModel: CityModel
    @Binding var colorTheme: ColorTheme

    var city: City
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(city.cityName)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(colorTheme.text_base_1)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text(city.country)
                .font(.headline)
                .foregroundColor(colorTheme.text_base_2)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("\(city.latitude) / \(city.longitude)")
                .foregroundColor(colorTheme.text_base_3)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(maxWidth: .infinity)
        .padding(16)
        .background(colorTheme.surface_1)
    }
}

struct CityListItemView_Previews: PreviewProvider {
    static let cityModel = CityModel()
    
    static var previews: some View {
        CityListItemView(colorTheme: .constant(.mono), city: cityModel.cities[0])
            .environmentObject(cityModel)
    }
}
