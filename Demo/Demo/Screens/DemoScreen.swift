//
//  DemoScreen.swift
//  Demo
//
//  Created by Daniel Saidi on 2023-11-08.
//  Copyright © 2023 Kankoda Sweden AB. All rights reserved.
//

import SwiftUI

enum DemoScreen: String, Identifiable {
    
    case emojis, categories, picker
    
    var id: String { rawValue }
    
    var title: String {
        switch self {
        case .emojis: return "Emojis"
        case .categories: return "Categories"
        case .picker: return "Picker"
        }
    }
    
    var icon: String {
        switch self {
        case .emojis: return "😀"
        case .categories: return "🐻"
        case .picker: return "📱"
        }
    }
    
    var label: some View {
        Label {
            Text(title)
        } icon: {
            Text(icon)
        }
    }
    
    var link: some View {
        NavigationLink(value: self) {
            label
        }
    }
}
