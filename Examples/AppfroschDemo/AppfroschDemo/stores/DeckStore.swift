//
//  ContentView.swift
//  AppfroschDemo
//
//  Created by Andreas Seeger on 07.08.2023.
//

import DeckUI
import Observation
import SwiftUI

@Observable
final class DeckStore {
    var decks: [Deck]
    
    init(
        decks: [Deck] = Deck.sampleArray
    ) {
        self.decks = decks
    }
}
