//
//  PresenterScene.swift
//  AppfroschDemo
//
//  Created by Andreas Seeger on 08.08.2023.
//

import DeckUI
import SwiftUI

#if canImport(AppKit)
struct PresenterScene: Scene {
    @Binding var deckStore: DeckStore
    
    var body: some Scene {
        WindowGroup("Presentation", for: Deck.ID.self) { $deckId in
            if let deckId = deckId {
                let deck = getDeck(for: deckId)
                Presenter(deck: deck)
            }
        }
    }
    
    func getDeck(for deckId: Deck.ID) -> Deck {
        guard let deck = deckStore.decks.first(where: { $0.id == deckId })
        else { fatalError("Could not find deck with id \(deckId).") }
        return deck
    }
}
#endif
