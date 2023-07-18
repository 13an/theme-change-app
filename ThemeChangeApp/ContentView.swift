//
//  ContentView.swift
//  ThemeChangeApp
//
//  Created by 13an on 2023/07/18.
//

import SwiftUI

struct ContentView: View {
    @State private var isSettingViewPresented = false
    @State private var colorTheme: ColorTheme = .simpleMono

    var body: some View {
        ZStack {
            colorTheme.backgroundColor
                .ignoresSafeArea()

            VStack {
                Text("Hello World")
                    .foregroundColor(colorTheme.textColor)
                    .font(.title)
                    .padding()

                Spacer()
            }

            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        isSettingViewPresented.toggle()
                    }) {
                        Text("Setting")
                            .foregroundColor(.blue)
                            .padding()
                    }
                }

                Spacer()
            }
        }
        .sheet(isPresented: $isSettingViewPresented) {
            SettingView(colorTheme: $colorTheme)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

