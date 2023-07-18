//
//  Color.swift
//  ThemeChangeApp
//
//  Created by 13an on 2023/07/18.
//

import SwiftUI

extension Color {
    static let background_1_mono = Color("background_1_mono")
    static let background_1_orange = Color("background_1_orange")
    static let background_1_terminal = Color("background_1_terminal")
    
    static let surface_1_mono = Color("surface_1_mono")
    static let surface_1_orange = Color("surface_1_orange")
    static let surface_1_terminal = Color("surface_1_terminal")
    
    static let text_base_1_mono = Color("text_base_1_mono")
    static let text_base_1_orange = Color("text_base_1_orange")
    static let text_base_1_terminal = Color("text_base_1_terminal")

    static let text_base_2_mono = Color("text_base_2_mono")
    static let text_base_2_orange = Color("text_base_2_orange")
    static let text_base_2_terminal = Color("text_base_2_terminal")
    
    static let text_base_3_mono = Color("text_base_3_mono")
    static let text_base_3_orange = Color("text_base_3_orange")
    static let text_base_3_terminal = Color("text_base_3_terminal")
    
    static let text_accent_1_mono = Color("text_accent_1_mono")
    static let text_accent_1_orange = Color("text_accent_1_orange")
    static let text_accent_1_terminal = Color("text_accent_1_terminal")


    static let surfaceColor = Color("SurfaceColor")
}

enum ColorTheme {
    case mono, orange

    var background_1: Color {
        switch self {
        case .mono:
            return Color.background_1_mono
        case .orange:
            return Color.background_1_orange
        }
    }
    
    var surface_1: Color {
        switch self {
        case .mono:
            return Color.surface_1_mono
        case .orange:
            return Color.surface_1_orange
        }
    }

    var text_base_1: Color {
        switch self {
        case .mono:
            return Color.text_base_1_mono
        case .orange:
            return Color.text_base_1_orange
        }
    }
    
    var text_base_2: Color {
        switch self {
        case .mono:
            return Color.text_base_2_mono
        case .orange:
            return Color.text_base_2_orange
        }
    }
    
    var text_base_3: Color {
        switch self {
        case .mono:
            return Color.text_base_3_mono
        case .orange:
            return Color.text_base_3_orange
        }
    }
}
