//
//  ContentView.swift
//  Demo
//
//  Created by Daniel Saidi on 2023-11-08.
//

import SwiftUI

struct ContentView: View {
    
    enum Screen {
        case emojis, settings
    }
    
    @State
    private var screen = Screen.emojis
    @State
    private var query = ""
    
    var body: some View {
        NavigationSplitView {
            List((0...10), id: \.self, selection: $screen) { int in
                NavigationLink("HEJ", value: Screen.emojis)
            }
            List((0...10), id: \.self, selection: $screen) { int in
                NavigationLink("HEJ", value: Screen.settings)
            }
        } detail: {
            content
        }
    }
}

extension ContentView {
    
    @ViewBuilder
    var content: some View {
        switch screen {
        case .emojis: Text("EMOJIS")
                .searchable(text: $query)
        case .settings: Text("SETT")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
