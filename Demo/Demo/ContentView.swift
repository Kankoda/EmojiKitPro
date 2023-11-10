//
//  ContentView.swift
//  Demo
//
//  Created by Daniel Saidi on 2023-11-08.
//

import EmojiKit
import SwiftUI

struct ContentView: View {
    
    init(id: String) {
        self.id = id
    }
    
    let id: String
    
    @State
    private var screen: DemoScreen? = .emojis
    
    @State
    private var query = ""
    
    var body: some View {
        NavigationSplitView {
            List(selection: $screen) {
                DemoScreen.emojis.link
                DemoScreen.categories.link
                DemoScreen.picker.link
            }.navigationTitle("EmojiKit Demo")
        } detail: {
            detailContent.id(id)
        }
    }
}

extension ContentView {
    
    @ViewBuilder
    var detailContent: some View {
        if License.hasCurrent {
            switch screen {
            case .none: EmptyView()
            case .emojis: EmojiScreen()
            case .categories: EmojiCategoriesScreen()
            case .picker: EmojiPickerScreen()
            }
        } else {
            ProgressView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(id: "")
    }
}
