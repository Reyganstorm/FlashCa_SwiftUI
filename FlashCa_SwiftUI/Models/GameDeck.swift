//
//  GameDeck.swift
//  FlashCa_SwiftUI
//
//  Created by Руслан Штыбаев on 27.06.2024.
//

import Foundation
import SwiftData

@Model
final class GameDeck  {
    let deck: Deck
    let hint: Int
    let statistic: String
    let lastUsed: Date
    
    init(deck: Deck, hint: Int, statistic: String, lastUsed: Date) {
        self.deck = deck
        self.hint = hint
        self.statistic = statistic
        self.lastUsed = lastUsed
    }
}
