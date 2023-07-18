//
//  City.swift
//  ThemeChangeApp
//
//  Created by 13an on 2023/07/18.
//

import SwiftUI

struct City: Identifiable, Hashable {
    let id: Int
    let cityName: String
    let country: String
    let latitude: Double
    let longitude: Double
}

class CityModel: ObservableObject {
    @Published var cities = [
        City(id: 1, cityName: "Kyoto", country: "Japan", latitude: 35.576654, longitude: 139.708241),
        City(id: 2, cityName: "Osaka", country: "Japan", latitude: 35.576654, longitude: 139.708241),
        City(id: 3, cityName: "San Francisco", country: "United States", latitude: 35.576654, longitude: 139.708241),
        City(id: 4, cityName: "Tokyo", country: "Japan", latitude: 35.576654, longitude: 139.708241),
        City(id: 5, cityName: "Paris", country: "France", latitude: 35.576654, longitude: 139.708241),
        City(id: 6, cityName: "Berlin", country: "Germany", latitude: 35.576654, longitude: 139.708241),
        City(id: 7, cityName: "Sao Paulo", country: "Brazil", latitude: 35.576654, longitude: 139.708241),
    ]
}
