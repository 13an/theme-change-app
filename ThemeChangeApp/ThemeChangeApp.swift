//
//  ThemeChangeAppApp.swift
//  ThemeChangeApp
//
//  Created by 13an on 2023/07/18.
//

import SwiftUI

@main
struct ThemeChangeApp: App {
    @AppStorage(wrappedValue: 0, "appearanceMode") var appearanceMode
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .applyAppearenceSetting(AppearanceModeSetting(rawValue: self.appearanceMode) ?? .followSystem)
        }
    }
}
