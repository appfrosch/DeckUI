//
//  ContentView.swift
//  AppfroschDemo
//
//  Created by Andreas Seeger on 07.08.2023.
//

import SwiftUI

struct MainSceneContentView: View {
    @Environment(\.openWindow) var openWindow
    @Binding var deckStore: DeckStore
    
    var body: some View {
        List {
            ForEach(deckStore.decks) { deck in
                Text(deck.title)
                    .onTapGesture {
                        openWindow(value: deck.id)
                    }
            }
        }
    }
}

#Preview {
    MainSceneContentView(deckStore: .constant(DeckStore()))
}
