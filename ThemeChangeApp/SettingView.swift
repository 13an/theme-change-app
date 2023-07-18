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
                Text("Light").tag(ColorTheme.simpleMono)
                Text("Dark").tag(ColorTheme.vividOrange)
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
        .background(colorTheme.backgroundColor)
    }
}

enum ColorTheme {
    case simpleMono, vividOrange

    var backgroundColor: Color {
        switch self {
        case .simpleMono:
            return .white
        case .vividOrange:
            return .black
        }
    }

    var textColor: Color {
        switch self {
        case .simpleMono:
            return .black
        case .vividOrange:
            return .white
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView(colorTheme: .constant(.simpleMono))
    }
}
