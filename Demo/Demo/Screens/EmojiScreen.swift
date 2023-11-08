//
//  EmojiScreen.swift
//  Demo
//
//  Created by Daniel Saidi on 2023-11-08.
//  Copyright © 2023 Kankoda Sweden AB. All rights reserved.
//

import EmojiKit
import SwiftUI

struct EmojiScreen: View {
    
    @State
    private var query = ""
    
    var body: some View {
        ScrollView(.vertical) {
            try? Emoji.Grid(
                emojis: Emoji.all.matching(query)
            ) {
                $0.view
            }
            .padding(10)
        }
        .searchable(text: $query)
        .navigationTitle("All Emojis")
    }
}
