//
//  EmojiPickerScreen.swift
//  Demo
//
//  Created by Daniel Saidi on 2023-11-08.
//  Copyright © 2023 Kankoda Sweden AB. All rights reserved.
//

import EmojiKit
import SwiftUI

struct EmojiPickerScreen: View {
    
    @State
    private var query = ""
    
    @State
    private var selection: Emoji?
    
    var body: some View {
        ScrollView(.vertical) {
            try? Emoji.Picker(
                selection: $selection,
                emojis: Emoji.all.matching(query),
                config: .demoPicker
            ) {
                $0.view
                    .scaleEffect(isSelected($0.emoji) ? 1.2 : 0.8)
            }
            .padding(10)
        }
        .searchable(text: $query)
        .navigationTitle("Emoji Picker")
    }
    
    func isSelected(_ emoji: Emoji) -> Bool {
        emoji.neutralSkinToneVariant == selection?.neutralSkinToneVariant
    }
}

extension Emoji.GridConfiguration {
    
    static var demoPicker = Self.init(
        font: .system(size: 45),
        itemSize: 45
    )
}

extension Emoji.PickerConfiguration {
    
    static var demoPicker = Self.init(
        animation: .interpolatingSpring(stiffness: 100, damping: 10),
        grid: .demoPicker
    )
}
