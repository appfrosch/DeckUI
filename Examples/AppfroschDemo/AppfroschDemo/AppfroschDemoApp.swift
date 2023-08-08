//
//  AppfroschDemoApp.swift
//  AppfroschDemo
//
//  Created by Andreas Seeger on 07.08.2023.
//

import DeckUI
import SwiftUI

@main
struct AppfroschDemoApp: App {
    @State private var deckStore = DeckStore()
    
    var body: some Scene {
        WindowGroup {
            MainSceneContentView(deckStore: $deckStore)
                .environment(deckStore)
        }
        PresenterScene(deckStore: $deckStore)
    }
}
