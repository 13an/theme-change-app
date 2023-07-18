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

    var body: some View {
        VStack {
            Picker("Color Theme", selection: $colorTheme) {
                Text("Light").tag(ColorTheme.mono)
                Text("Dark").tag(ColorTheme.orange)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()

            Spacer()

            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                Text("Close")
                    .foregroundColor(.blue)
                    .padding()
            }
        }
        .background(colorTheme.background_1)
    }
}



struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView(colorTheme: .constant(.mono))
    }
}
