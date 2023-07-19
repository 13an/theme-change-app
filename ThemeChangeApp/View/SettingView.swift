//
//  SettingView.swift
//  ThemeChangeApp
//
//  Created by 13an on 2023/07/18.
//

import SwiftUI

struct SettingView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var colorTheme: ColorTheme
    @State private var selectedLanguageIndex = 0

    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section("Color Theme") {
                        Picker("Color Theme", selection: $colorTheme) {
                            Text("Mono").tag(ColorTheme.mono)
                            Text("Orange").tag(ColorTheme.orange)
                            Text("Terminal").tag(ColorTheme.terminal)

                        }
                        .pickerStyle(SegmentedPickerStyle())
                        .padding()
                    }
                    .listRowBackground(colorTheme.surface_1)
                    .foregroundColor(colorTheme.text_base_2)
                }
                .scrollContentBackground(.hidden)
                
                Spacer()

                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Close")
                        .foregroundColor(colorTheme.text_accent_1)
                        .padding()
                }
                .fontWeight(.bold)
            }
            .background(colorTheme.background_1)
            .navigationTitle("Setting")
            .toolbarBackground(colorTheme.background_1, for: .navigationBar)
        }
    }
}



struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        let localizationIds = ["en", "ja", "de"]
        ForEach(localizationIds, id: \.self) { id in
            SettingView(colorTheme: .constant(.terminal))
                .previewDisplayName("Localized - \(id)")
                .environment(\.locale, .init(identifier: id))
        }
    }
}
