//
//  EmojiCategoriesScreen.swift
//  Demo
//
//  Created by Daniel Saidi on 2023-11-08.
//  Copyright © 2023 Kankoda Sweden AB. All rights reserved.
//

import EmojiKit
import SwiftUI

struct EmojiCategoriesScreen: View {
    
    @State
    private var query = ""
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVStack {
                ForEach(Emoji.Category.all) {
                    $0.view(for: query)
                }
            }
        }
        .searchable(text: $query)
        .navigationTitle("All Categories")
    }
}

extension Emoji.Category {
    
    var gridHeader: some View {
        Label {
            Text(title)
        } icon: {
            keyboardIcon
        }
        .padding(5)
        .frame(maxWidth: .infinity, alignment: .leading)
        .foregroundColor(.secondary)
    }
    
    @ViewBuilder
    func view(for query: String) -> some View {
        let emojis = (try? emojis.matching(query)) ?? []
        if !emojis.isEmpty {
            DisclosureGroup {
                try? Emoji.Grid(
                    emojis: (try? emojis.matching(query)) ?? []
                ) { $0.view }
            } label: {
                gridHeader
            }
            .padding(.horizontal, 10)
            .tint(.secondary)
        }
    }
}
