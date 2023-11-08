//
//  DemoApp.swift
//  Demo
//
//  Created by Daniel Saidi on 2023-11-08.
//

import SwiftUI
import EmojiKit

@main
struct DemoApp: App {
    
    @State
    private var licenseKey = ""
    
    var body: some Scene {
        WindowGroup {
            ContentView(id: licenseKey)
                .task(registerLicense)
        }
    }
    
    @Sendable
    func registerLicense() {
        Task {
            do {
                try await License.register(licenseKey: "59106F92-CECB4A9D-AE4F208E-2E5D3506")
                await MainActor.run {
                    licenseKey = License.current?.licenseKey ?? "-"
                }
            } catch {
                print(error)
            }
        }
    }
}
